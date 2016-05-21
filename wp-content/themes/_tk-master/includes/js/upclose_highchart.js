jQuery( document ).ready(function($) {
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
});

jQuery( document ).load(function($) {
    $(window).resize();
});