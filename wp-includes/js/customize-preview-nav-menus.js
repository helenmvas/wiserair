<<<<<<< HEAD
/* global JSON, _wpCustomizePreviewNavMenusExports */

( function( $, _, wp ) {
	'use strict';

	if ( ! wp || ! wp.customize ) { return; }

	var api = wp.customize,
		currentRefreshDebounced = {},
		refreshDebounceDelay = 200,
		settings = {},
		defaultSettings = {
			renderQueryVar: null,
			renderNonceValue: null,
			renderNoncePostKey: null,
			previewCustomizeNonce: null,
			requestUri: '/',
			theme: {
				active: false,
				stylesheet: ''
			},
			navMenuInstanceArgs: {}
		};

	api.MenusCustomizerPreview = {
		/**
		 * Bootstrap functionality.
		 */
		init : function() {
			var self = this, initializedSettings = {};

			settings = _.extend( {}, defaultSettings );
			if ( 'undefined' !== typeof _wpCustomizePreviewNavMenusExports ) {
				_.extend( settings, _wpCustomizePreviewNavMenusExports );
			}

			api.each( function( setting, id ) {
				setting.id = id;
				initializedSettings[ setting.id ] = true;
				self.bindListener( setting );
			} );

			api.preview.bind( 'setting', function( args ) {
				var id, value, setting;
				args = args.slice();
				id = args.shift();
				value = args.shift();

				setting = api( id );
				if ( ! setting ) {
					// Currently customize-preview.js is not creating settings for dynamically-created settings in the pane, so we have to do it.
					setting = api.create( id, value ); // @todo This should be in core
				}
				if ( ! setting.id ) {
					// Currently customize-preview.js doesn't set the id property for each setting, like customize-controls.js does.
					setting.id = id;
				}

				if ( ! initializedSettings[ setting.id ] ) {
					initializedSettings[ setting.id ] = true;
					if ( self.bindListener( setting ) ) {
						setting.callbacks.fireWith( setting, [ setting(), null ] );
					}
				}
			} );
		},

		/**
		 *
		 * @param {wp.customize.Value} setting
		 * @returns {boolean} Whether the setting was bound.
		 */
		bindListener : function( setting ) {
			var matches, themeLocation;

			matches = setting.id.match( /^nav_menu\[(-?\d+)]$/ );
			if ( matches ) {
				setting.navMenuId = parseInt( matches[1], 10 );
				setting.bind( this.onChangeNavMenuSetting );
				return true;
			}

			matches = setting.id.match( /^nav_menu_item\[(-?\d+)]$/ );
			if ( matches ) {
				setting.navMenuItemId = parseInt( matches[1], 10 );
				setting.bind( this.onChangeNavMenuItemSetting );
				return true;
			}

			matches = setting.id.match( /^nav_menu_locations\[(.+?)]/ );
			if ( matches ) {
				themeLocation = matches[1];
				setting.bind( _.bind( function() {
					this.refreshMenuLocation( themeLocation );
				}, this ) );
				return true;
			}

			return false;
		},

		/**
		 * Handle changing of a nav_menu setting.
		 *
		 * @this {wp.customize.Setting}
		 */
		onChangeNavMenuSetting : function() {
			var setting = this;
			if ( ! setting.navMenuId ) {
				throw new Error( 'Expected navMenuId property to be set.' );
			}
			api.MenusCustomizerPreview.refreshMenu( setting.navMenuId );
		},

		/**
		 * Handle changing of a nav_menu_item setting.
		 *
		 * @this {wp.customize.Setting}
		 * @param {object} to
		 * @param {object} from
		 */
		onChangeNavMenuItemSetting : function( to, from ) {
			if ( from && from.nav_menu_term_id && ( ! to || from.nav_menu_term_id !== to.nav_menu_term_id ) ) {
				api.MenusCustomizerPreview.refreshMenu( from.nav_menu_term_id );
			}
			if ( to && to.nav_menu_term_id ) {
				api.MenusCustomizerPreview.refreshMenu( to.nav_menu_term_id );
			}
		},

		/**
		 * Update a given menu rendered in the preview.
		 *
		 * @param {int} menuId
		 */
		refreshMenu : function( menuId ) {
			var assignedLocations = [];

			api.each(function( setting, id ) {
				var matches = id.match( /^nav_menu_locations\[(.+?)]/ );
				if ( matches && menuId === setting() ) {
					assignedLocations.push( matches[1] );
				}
			});

			_.each( settings.navMenuInstanceArgs, function( navMenuArgs, instanceNumber ) {
				if ( menuId === navMenuArgs.menu || -1 !== _.indexOf( assignedLocations, navMenuArgs.theme_location ) ) {
					this.refreshMenuInstanceDebounced( instanceNumber );
				}
			}, this );
		},

		/**
		 * Refresh the menu(s) associated with a given nav menu location.
		 *
		 * @param {string} location
		 */
		refreshMenuLocation : function( location ) {
			var foundInstance = false;
			_.each( settings.navMenuInstanceArgs, function( navMenuArgs, instanceNumber ) {
				if ( location === navMenuArgs.theme_location ) {
					this.refreshMenuInstanceDebounced( instanceNumber );
					foundInstance = true;
				}
			}, this );
			if ( ! foundInstance ) {
				api.preview.send( 'refresh' );
			}
		},

		/**
		 * Update a specific instance of a given menu on the page.
		 *
		 * @param {int} instanceNumber
		 */
		refreshMenuInstance : function( instanceNumber ) {
			var data, menuId, customized, container, request, wpNavMenuArgs, instance, containerInstanceClassName;

			if ( ! settings.navMenuInstanceArgs[ instanceNumber ] ) {
				throw new Error( 'unknown_instance_number' );
			}
			instance = settings.navMenuInstanceArgs[ instanceNumber ];

			containerInstanceClassName = 'partial-refreshable-nav-menu-' + String( instanceNumber );
			container = $( '.' + containerInstanceClassName );

			if ( _.isNumber( instance.menu ) ) {
				menuId = instance.menu;
			} else if ( instance.theme_location && api.has( 'nav_menu_locations[' + instance.theme_location + ']' ) ) {
				menuId = api( 'nav_menu_locations[' + instance.theme_location + ']' ).get();
			}

			if ( ! menuId || ! instance.can_partial_refresh || 0 === container.length ) {
				api.preview.send( 'refresh' );
				return;
			}
			menuId = parseInt( menuId, 10 );

			data = {
				nonce: settings.previewCustomizeNonce, // for Customize Preview
				wp_customize: 'on'
			};
			if ( ! settings.theme.active ) {
				data.theme = settings.theme.stylesheet;
			}
			data[ settings.renderQueryVar ] = '1';

			// Gather settings to send in partial refresh request.
			customized = {};
			api.each( function( setting, id ) {
				var value = setting.get(), shouldSend = false;
				// @todo Core should propagate the dirty state into the Preview as well so we can use that here.

				// Send setting if it is a nav_menu_locations[] setting.
				shouldSend = shouldSend || /^nav_menu_locations\[/.test( id );

				// Send setting if it is the setting for this menu.
				shouldSend = shouldSend || id === 'nav_menu[' + String( menuId ) + ']';

				// Send setting if it is one that is associated with this menu, or it is deleted.
				shouldSend = shouldSend || ( /^nav_menu_item\[/.test( id ) && ( false === value || menuId === value.nav_menu_term_id ) );

				if ( shouldSend ) {
					customized[ id ] = value;
				}
			} );
			data.customized = JSON.stringify( customized );
			data[ settings.renderNoncePostKey ] = settings.renderNonceValue;

			wpNavMenuArgs = $.extend( {}, instance );
			data.wp_nav_menu_args_hash = wpNavMenuArgs.args_hash;
			delete wpNavMenuArgs.args_hash;
			data.wp_nav_menu_args = JSON.stringify( wpNavMenuArgs );

			container.addClass( 'customize-partial-refreshing' );

			request = wp.ajax.send( null, {
				data: data,
				url: settings.requestUri
			} );
			request.done( function( data ) {
				// If the menu is now not visible, refresh since the page layout may have changed.
				if ( false === data ) {
					api.preview.send( 'refresh' );
					return;
				}

				var eventParam, previousContainer = container;
				container = $( data );
				container.addClass( containerInstanceClassName );
				container.addClass( 'partial-refreshable-nav-menu customize-partial-refreshing' );
				previousContainer.replaceWith( container );
				eventParam = {
					instanceNumber: instanceNumber,
					wpNavArgs: wpNavMenuArgs, // @deprecated
					wpNavMenuArgs: wpNavMenuArgs,
					oldContainer: previousContainer,
					newContainer: container
				};
				container.removeClass( 'customize-partial-refreshing' );
				$( document ).trigger( 'customize-preview-menu-refreshed', [ eventParam ] );
			} );
		},

		refreshMenuInstanceDebounced : function( instanceNumber ) {
			if ( currentRefreshDebounced[ instanceNumber ] ) {
				clearTimeout( currentRefreshDebounced[ instanceNumber ] );
			}
			currentRefreshDebounced[ instanceNumber ] = setTimeout(
				_.bind( function() {
					this.refreshMenuInstance( instanceNumber );
				}, this ),
				refreshDebounceDelay
			);
		}
	};

	api.bind( 'preview-ready', function() {
		api.preview.bind( 'active', function() {
			api.MenusCustomizerPreview.init();
		} );
	} );

}( jQuery, _, wp ) );
||||||| merged common ancestors
=======
/* global _wpCustomizePreviewNavMenusExports */
wp.customize.navMenusPreview = wp.customize.MenusCustomizerPreview = ( function( $, _, wp, api ) {
	'use strict';

	var self = {
		data: {
			navMenuInstanceArgs: {}
		}
	};
	if ( 'undefined' !== typeof _wpCustomizePreviewNavMenusExports ) {
		_.extend( self.data, _wpCustomizePreviewNavMenusExports );
	}

	/**
	 * Initialize nav menus preview.
	 */
	self.init = function() {
		var self = this;

		if ( api.selectiveRefresh ) {
			// Listen for changes to settings related to nav menus.
			api.each( function( setting ) {
				self.bindSettingListener( setting );
			} );
			api.bind( 'add', function( setting ) {
				self.bindSettingListener( setting, { fire: true } );
			} );
			api.bind( 'remove', function( setting ) {
				self.unbindSettingListener( setting );
			} );

			/*
			 * Ensure that wp_nav_menu() instances nested inside of other partials
			 * will be recognized as being present on the page.
			 */
			api.selectiveRefresh.bind( 'render-partials-response', function( response ) {
				if ( response.nav_menu_instance_args ) {
					_.extend( self.data.navMenuInstanceArgs, response.nav_menu_instance_args );
				}
			} );
		}

		api.preview.bind( 'active', function() {
			self.highlightControls();
		} );
	};

	if ( api.selectiveRefresh ) {

		/**
		 * Partial representing an invocation of wp_nav_menu().
		 *
		 * @class
		 * @augments wp.customize.selectiveRefresh.Partial
		 * @since 4.5.0
		 */
		self.NavMenuInstancePartial = api.selectiveRefresh.Partial.extend({

			/**
			 * Constructor.
			 *
			 * @since 4.5.0
			 * @param {string} id - Partial ID.
			 * @param {Object} options
			 * @param {Object} options.params
			 * @param {Object} options.params.navMenuArgs
			 * @param {string} options.params.navMenuArgs.args_hmac
			 * @param {string} [options.params.navMenuArgs.theme_location]
			 * @param {number} [options.params.navMenuArgs.menu]
			 * @param {object} [options.constructingContainerContext]
			 */
			initialize: function( id, options ) {
				var partial = this, matches, argsHmac;
				matches = id.match( /^nav_menu_instance\[([0-9a-f]{32})]$/ );
				if ( ! matches ) {
					throw new Error( 'Illegal id for nav_menu_instance partial. The key corresponds with the args HMAC.' );
				}
				argsHmac = matches[1];

				options = options || {};
				options.params = _.extend(
					{
						selector: '[data-customize-partial-id="' + id + '"]',
						navMenuArgs: options.constructingContainerContext || {},
						containerInclusive: true
					},
					options.params || {}
				);
				api.selectiveRefresh.Partial.prototype.initialize.call( partial, id, options );

				if ( ! _.isObject( partial.params.navMenuArgs ) ) {
					throw new Error( 'Missing navMenuArgs' );
				}
				if ( partial.params.navMenuArgs.args_hmac !== argsHmac ) {
					throw new Error( 'args_hmac mismatch with id' );
				}
			},

			/**
			 * Return whether the setting is related to this partial.
			 *
			 * @since 4.5.0
			 * @param {wp.customize.Value|string} setting  - Object or ID.
			 * @param {number|object|false|null}  newValue - New value, or null if the setting was just removed.
			 * @param {number|object|false|null}  oldValue - Old value, or null if the setting was just added.
			 * @returns {boolean}
			 */
			isRelatedSetting: function( setting, newValue, oldValue ) {
				var partial = this, navMenuLocationSetting, navMenuId, isNavMenuItemSetting;
				if ( _.isString( setting ) ) {
					setting = api( setting );
				}

				/*
				 * Prevent nav_menu_item changes only containing type_label differences triggering a refresh.
				 * These settings in the preview do not include type_label property, and so if one of these
				 * nav_menu_item settings is dirty, after a refresh the nav menu instance would do a selective
				 * refresh immediately because the setting from the pane would have the type_label whereas
				 * the setting in the preview would not, thus triggering a change event. The following
				 * condition short-circuits this unnecessary selective refresh and also prevents an infinite
				 * loop in the case where a nav_menu_instance partial had done a fallback refresh.
				 * @todo Nav menu item settings should not include a type_label property to begin with.
				 */
				isNavMenuItemSetting = /^nav_menu_item\[/.test( setting.id );
				if ( isNavMenuItemSetting && _.isObject( newValue ) && _.isObject( oldValue ) ) {
					delete newValue.type_label;
					delete oldValue.type_label;
					if ( _.isEqual( oldValue, newValue ) ) {
						return false;
					}
				}

				if ( partial.params.navMenuArgs.theme_location ) {
					if ( 'nav_menu_locations[' + partial.params.navMenuArgs.theme_location + ']' === setting.id ) {
						return true;
					}
					navMenuLocationSetting = api( 'nav_menu_locations[' + partial.params.navMenuArgs.theme_location + ']' );
				}

				navMenuId = partial.params.navMenuArgs.menu;
				if ( ! navMenuId && navMenuLocationSetting ) {
					navMenuId = navMenuLocationSetting();
				}

				if ( ! navMenuId ) {
					return false;
				}
				return (
					( 'nav_menu[' + navMenuId + ']' === setting.id ) ||
					( isNavMenuItemSetting && (
						( newValue && newValue.nav_menu_term_id === navMenuId ) ||
						( oldValue && oldValue.nav_menu_term_id === navMenuId )
					) )
				);
			},

			/**
			 * Make sure that partial fallback behavior is invoked if there is no associated menu.
			 *
			 * @since 4.5.0
			 *
			 * @returns {Promise}
			 */
			refresh: function() {
				var partial = this, menuId, deferred = $.Deferred();

				// Make sure the fallback behavior is invoked when the partial is no longer associated with a menu.
				if ( _.isNumber( partial.params.navMenuArgs.menu ) ) {
					menuId = partial.params.navMenuArgs.menu;
				} else if ( partial.params.navMenuArgs.theme_location && api.has( 'nav_menu_locations[' + partial.params.navMenuArgs.theme_location + ']' ) ) {
					menuId = api( 'nav_menu_locations[' + partial.params.navMenuArgs.theme_location + ']' ).get();
				}
				if ( ! menuId ) {
					partial.fallback();
					deferred.reject();
					return deferred.promise();
				}

				return api.selectiveRefresh.Partial.prototype.refresh.call( partial );
			},

			/**
			 * Render content.
			 *
			 * @inheritdoc
			 * @param {wp.customize.selectiveRefresh.Placement} placement
			 */
			renderContent: function( placement ) {
				var partial = this, previousContainer = placement.container;

				// Do fallback behavior to refresh preview if menu is now empty.
				if ( '' === placement.addedContent ) {
					placement.partial.fallback();
				}

				if ( api.selectiveRefresh.Partial.prototype.renderContent.call( partial, placement ) ) {

					// Trigger deprecated event.
					$( document ).trigger( 'customize-preview-menu-refreshed', [ {
						instanceNumber: null, // @deprecated
						wpNavArgs: placement.context, // @deprecated
						wpNavMenuArgs: placement.context,
						oldContainer: previousContainer,
						newContainer: placement.container
					} ] );
				}
			}
		});

		api.selectiveRefresh.partialConstructor.nav_menu_instance = self.NavMenuInstancePartial;

		/**
		 * Request full refresh if there are nav menu instances that lack partials which also match the supplied args.
		 *
		 * @param {object} navMenuInstanceArgs
		 */
		self.handleUnplacedNavMenuInstances = function( navMenuInstanceArgs ) {
			var unplacedNavMenuInstances;
			unplacedNavMenuInstances = _.filter( _.values( self.data.navMenuInstanceArgs ), function( args ) {
				return ! api.selectiveRefresh.partial.has( 'nav_menu_instance[' + args.args_hmac + ']' );
			} );
			if ( _.findWhere( unplacedNavMenuInstances, navMenuInstanceArgs ) ) {
				api.selectiveRefresh.requestFullRefresh();
				return true;
			}
			return false;
		};

		/**
		 * Add change listener for a nav_menu[], nav_menu_item[], or nav_menu_locations[] setting.
		 *
		 * @since 4.5.0
		 *
		 * @param {wp.customize.Value} setting
		 * @param {object}             [options]
		 * @param {boolean}            options.fire Whether to invoke the callback after binding.
		 *                                          This is used when a dynamic setting is added.
		 * @return {boolean} Whether the setting was bound.
		 */
		self.bindSettingListener = function( setting, options ) {
			var matches;
			options = options || {};

			matches = setting.id.match( /^nav_menu\[(-?\d+)]$/ );
			if ( matches ) {
				setting._navMenuId = parseInt( matches[1], 10 );
				setting.bind( this.onChangeNavMenuSetting );
				if ( options.fire ) {
					this.onChangeNavMenuSetting.call( setting, setting(), false );
				}
				return true;
			}

			matches = setting.id.match( /^nav_menu_item\[(-?\d+)]$/ );
			if ( matches ) {
				setting._navMenuItemId = parseInt( matches[1], 10 );
				setting.bind( this.onChangeNavMenuItemSetting );
				if ( options.fire ) {
					this.onChangeNavMenuItemSetting.call( setting, setting(), false );
				}
				return true;
			}

			matches = setting.id.match( /^nav_menu_locations\[(.+?)]/ );
			if ( matches ) {
				setting._navMenuThemeLocation = matches[1];
				setting.bind( this.onChangeNavMenuLocationsSetting );
				if ( options.fire ) {
					this.onChangeNavMenuLocationsSetting.call( setting, setting(), false );
				}
				return true;
			}

			return false;
		};

		/**
		 * Remove change listeners for nav_menu[], nav_menu_item[], or nav_menu_locations[] setting.
		 *
		 * @since 4.5.0
		 *
		 * @param {wp.customize.Value} setting
		 */
		self.unbindSettingListener = function( setting ) {
			setting.unbind( this.onChangeNavMenuSetting );
			setting.unbind( this.onChangeNavMenuItemSetting );
			setting.unbind( this.onChangeNavMenuLocationsSetting );
		};

		/**
		 * Handle change for nav_menu[] setting for nav menu instances lacking partials.
		 *
		 * @since 4.5.0
		 *
		 * @this {wp.customize.Value}
		 */
		self.onChangeNavMenuSetting = function() {
			var setting = this;

			self.handleUnplacedNavMenuInstances( {
				menu: setting._navMenuId
			} );

			// Ensure all nav menu instances with a theme_location assigned to this menu are handled.
			api.each( function( otherSetting ) {
				if ( ! otherSetting._navMenuThemeLocation ) {
					return;
				}
				if ( setting._navMenuId === otherSetting() ) {
					self.handleUnplacedNavMenuInstances( {
						theme_location: otherSetting._navMenuThemeLocation
					} );
				}
			} );
		};

		/**
		 * Handle change for nav_menu_item[] setting for nav menu instances lacking partials.
		 *
		 * @since 4.5.0
		 *
		 * @param {object} newItem New value for nav_menu_item[] setting.
		 * @param {object} oldItem Old value for nav_menu_item[] setting.
		 * @this {wp.customize.Value}
		 */
		self.onChangeNavMenuItemSetting = function( newItem, oldItem ) {
			var item = newItem || oldItem, navMenuSetting;
			navMenuSetting = api( 'nav_menu[' + String( item.nav_menu_term_id ) + ']' );
			if ( navMenuSetting ) {
				self.onChangeNavMenuSetting.call( navMenuSetting );
			}
		};

		/**
		 * Handle change for nav_menu_locations[] setting for nav menu instances lacking partials.
		 *
		 * @since 4.5.0
		 *
		 * @this {wp.customize.Value}
		 */
		self.onChangeNavMenuLocationsSetting = function() {
			var setting = this, hasNavMenuInstance;
			self.handleUnplacedNavMenuInstances( {
				theme_location: setting._navMenuThemeLocation
			} );

			// If there are no wp_nav_menu() instances that refer to the theme location, do full refresh.
			hasNavMenuInstance = !! _.findWhere( _.values( self.data.navMenuInstanceArgs ), {
				theme_location: setting._navMenuThemeLocation
			} );
			if ( ! hasNavMenuInstance ) {
				api.selectiveRefresh.requestFullRefresh();
			}
		};
	}

	/**
	 * Connect nav menu items with their corresponding controls in the pane.
	 *
	 * Setup shift-click on nav menu items which are more granular than the nav menu partial itself.
	 * Also this applies even if a nav menu is not partial-refreshable.
	 *
	 * @since 4.5.0
	 */
	self.highlightControls = function() {
		var selector = '.menu-item';

		// Focus on the menu item control when shift+clicking the menu item.
		$( document ).on( 'click', selector, function( e ) {
			var navMenuItemParts;
			if ( ! e.shiftKey ) {
				return;
			}

			navMenuItemParts = $( this ).attr( 'class' ).match( /(?:^|\s)menu-item-(\d+)(?:\s|$)/ );
			if ( navMenuItemParts ) {
				e.preventDefault();
				e.stopPropagation(); // Make sure a sub-nav menu item will get focused instead of parent items.
				api.preview.send( 'focus-nav-menu-item-control', parseInt( navMenuItemParts[1], 10 ) );
			}
		});
	};

	api.bind( 'preview-ready', function() {
		self.init();
	} );

	return self;

}( jQuery, _, wp, wp.customize ) );
>>>>>>> 4f209a4e63213fa813cf729c7cd0c1788ee72395
