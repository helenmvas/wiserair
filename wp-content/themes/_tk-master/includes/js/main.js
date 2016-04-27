(function() {
    'use strict';

    window.jQuery = require('jquery');
    window.$ = window.jQuery;
    require('bootstrap');
    require('highcharts');
    require('SiriWaveJS');
    window.Hammer = require('hammerjs');
    window.svgPanZoom = require('svg-pan-zoom');

    loadScript("siriwave.js", myPrettyCode);
    
    /* Set up Siri Wave Form view */
    var $siri_ios9 = document.getElementById('siri-container');
    if (!!$siri_ios9) {
        var $width = parseInt($(document).width(), 10);

        SiriWave9.prototype.COLORS = [
            [255, 255, 255],
            [255, 255, 255],
            [255, 255, 255]
        ];

        var SW9 = new SiriWave9({
            width: $width,
            height: 85,
            speed: 0.1,
            amplitude:1,
            container: $siri_ios9,
            autostart: true,
            color: '#ffffff'
        });
    }

    var $high_chart = document.getElementById('chart-container');
    if(!!$high_chart) {
        /* Configure highcharts*/
        $('#chart-container').highcharts({
            credits: {
                enabled: false
            },
            title: {
                text: 'Indoor vs. Outdoor'
            },
            subtitle: {
                text: 'Downstairs Thermostat'
            },
            xAxis: {
                categories: ['10AM', '11AM', '12PM', '1PM', '2PM', '3PM', '4PM', '5PM', '6PM', '7PM', '8PM', '9PM', '10PM', '11PM', '12AM', '1AM', '2AM', '3AM', '4AM', '5AM', '6AM', '7AM', '8AM', '9AM']
            },
            yAxis: {
                title: {
                    text: 'Temperature (°F)'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '°F'
            },
            plotOptions: {
                series: {
                    marker: {
                        enabled: false
                    }
                }
            },
            legend: {
                enabled: false
            },
            series: [{
                name: 'Indoor',
                data: [68, 67.5, 68, 67.5, 67.5, 68, 68.9, 71.5, 72, 72, 71.8, 71.9, 72, 71.5, 70, 69.8, 69.9, 70, 69.8, 69.9, 70, 70.9, 71.9, 71.7],
                color: {
                    linearGradient: {
                        x1: 0,
                        y1: 0,
                        x2: 0,
                        y2: 1
                    },
                    stops: [
                        [0, 'rgb(255,20,0)'],
                        [1, 'rgb(233,236,0)']
                    ],
                    fallback: 'rgb(255,20,0)'
                },
                lineWidth: 5,
                states: {
                    hover: {
                        enabled: true,
                        lineWidth: 5
                    }
                },
                type: 'spline'
            }, {
                name: 'Outdoor',
                data: [52, 56, 60, 62, 62, 63, 62, 62, 60, 58, 57, 55, 53, 51, 49, 47, 45, 45, 45, 45, 46, 48, 49, 50],
                color: {
                    linearGradient: {
                        x1: 0,
                        y1: 0,
                        x2: 0,
                        y2: 1
                    },
                    stops: [
                        [0, 'rgb(41,141,255)'],
                        [1, 'rgb(24,20,162)']
                    ],
                    fallback: 'rgb(41,141,255)'
                },
                lineWidth: 5,
                states: {
                    hover: {
                        enabled: true,
                        lineWidth: 5
                    }
                },
                type: 'spline'
            }, {
                name: 'Setpoint',
                data: [68, 68, 68, 68, 68, 68, 72, 72, 72, 72, 72, 72, 72, 70, 70, 70, 70, 70, 70, 70, 70, 72, 72, 68],
                dashStyle: 'shortdash',
                color: '#00A550',
                type: 'spline'
            }]
        });
    }

    var $software_svg = document.getElementById('software-svg');
    var $hardware_svg = document.getElementById('hardware-svg');
    if(!!$software_svg && !!$hardware_svg) {

        var eventsHandler = {
            haltEventListeners: ['touchstart', 'touchend', 'touchmove', 'touchleave', 'touchcancel'],
            init: function(options) {
                var instance = options.instance,
                    initialScale = 1,
                    pannedX = 0,
                    pannedY = 0

                // Init Hammer
                // Listen only for pointer and touch events
                this.hammer = Hammer(options.svgElement, {
                    inputClass: Hammer.SUPPORT_POINTER_EVENTS ? Hammer.PointerEventInput : Hammer.TouchInput
                });

                // Enable pinch
                this.hammer.get('pinch').set({enable: true});

                // Handle double tap
                this.hammer.on('doubletap', function(ev){
                    instance.zoomIn()
                });

                // Handle pan
                this.hammer.on('panstart panmove', function(ev){
                    // On pan start reset panned variables
                    if (ev.type === 'panstart') {
                        pannedX = 0
                        pannedY = 0
                    }

                    // Pan only the difference
                    instance.panBy({x: ev.deltaX - pannedX, y: ev.deltaY - pannedY})
                    pannedX = ev.deltaX
                    pannedY = ev.deltaY
                });

                // Handle pinch
                this.hammer.on('pinchstart pinchmove', function(ev){
                    // On pinch start remember initial zoom
                    if (ev.type === 'pinchstart') {
                        initialScale = instance.getZoom()
                        instance.zoom(initialScale * ev.scale)
                    }

                    instance.zoom(initialScale * ev.scale)

                });

                // Prevent moving the page on some devices when panning over SVG
                options.svgElement.addEventListener('touchmove', function(e){ e.preventDefault(); });
            },

            destroy: function(){
                this.hammer.destroy()
            }
        }

        var beforePan = function(oldPan, newPan){
            var stopHorizontal = false,
                stopVertical = false,
                gutterWidth = 100,
                gutterHeight = 100,
                sizes = this.getSizes(),
                leftLimit = -((sizes.viewBox.x + sizes.viewBox.width) * sizes.realZoom) + gutterWidth,
                rightLimit = sizes.width - gutterWidth - (sizes.viewBox.x * sizes.realZoom),
                topLimit = -((sizes.viewBox.y + sizes.viewBox.height) * sizes.realZoom) + gutterHeight,
                bottomLimit = sizes.height - gutterHeight - (sizes.viewBox.y * sizes.realZoom)

            var customPan = {}
            customPan.x = Math.max(leftLimit, Math.min(rightLimit, newPan.x))
            customPan.y = Math.max(topLimit, Math.min(bottomLimit, newPan.y))

            return customPan
        }

        // Expose to window namespace for testing purposes
        $software_svg.addEventListener('load', function(){
            window.softwarePanZoom = svgPanZoom($software_svg, {
                zoomEnabled: true,
                controlIconsEnabled: false,
                fit: true,
                center: true,
                minZoom: 1,
                maxZoom: 5,
                customEventsHandler: eventsHandler,
                beforePan: beforePan
            });
        });

        $hardware_svg.addEventListener('load', function() {
            window.hardwarePanZoom = svgPanZoom($hardware_svg, {
                zoomEnabled: true,
                controlIconsEnabled: false,
                fit: true,
                center: true,
                minZoom: 1,
                maxZoom: 5,
                customEventsHandler: eventsHandler,
                beforePan: beforePan
            });
        });


    }

})();
