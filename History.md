
1.10.4 / 2015-02-12
==================

 * Add headers
 * Update bugsnag to 4.0.1
 * Update history.md

1.10.3 / 2015-02-12
==================

 * Merge pull request #256 from segmentio/catch-serialization-error
 * Catch serialization errors
 * Merge pull request #210 from segmentio/fix/localytics
 * localytics customer lifetime value
 * Ignore IDE files
 * Update history.md

1.10.2 / 2015-02-09
==================

 * Fix cached traits to be included in context.traits

1.10.1 / 2015-02-05
==================

 * Update test
 * Add kahuna header
 * Add deps target to makefile
 * Add separate build phase for opening release dir in finder
 * Taplytics 2.1.36

1.10.0 / 2015-02-04
==================

 * Add kahuna

1.9.1 / 2015-02-03
==================

 * Fix dupd symbols
 * Updated Taplytics to 2.1.34

1.9.0 / 2015-02-02
==================

 * Fix localytics 
 * Remove testflight
 * Add bugsnag logger header
 * updating Taplytics to 2.1.32

1.8.15 / 2015-01-21
==================

 * Update optimizely to 1.0.75

1.8.14 / 2015-01-19
==================

 * updated Taplytics to 2.1.26
 * updating Taplytics integration to support user attributes and analytics events
 * Properly cast objc_msgSend calls
 * Fix mapping of createdAt -> $created

1.8.13 / 2015-01-15
==================

 * Upload localytics to 3.0.0

1.8.12 / 2015-01-13
==================

 * Update optimizely
 * Updating Taplytics to 2.1.22
 * Update Amplitude to v2.2.4

1.8.11 / 2015-01-09
==================

 * Add app.namespace to be bundle identifier

1.8.10 / 2015-01-05
==================

 * Update Taplytics to v2.1.20
 * add support for GA remarketing

1.8.10 / 2015-01-05
==================

 * Update Taplytics to v2.1.20
 * add support for GA remarketing

1.8.8 / 2014-12-12
==================

 * Fix cli-release script to update changelog
 * Update google analytics to 3.10
 * Fix reachability

1.8.7 / 2014-12-02
==================

 * Update mixpanel to 2.6.0

1.8.2 / 2014-10-30
==================

 * tapstream: post notification that integration has started
 * mixpanel: add check that user id isn't nil before identifying (just prevents an NSLog call they were making)

1.8.1 / 2014-10-30
==================

 * tapstream: update to 2.8.3

1.8.0 / 2014-10-23
==================

 * add: api for enabling/disabling ad tracking

1.7.10 / 2014-10-21
==================

 * mixpanel: update to 2.5.4


1.7.9 / 2014-10-21
==================

 * add: timezone to context
 * taplytics: add missing headers

1.7.8 / 2014-10-20
==================

 * localytics: fix call to register notifications
 * localytics: update to 2.71.0
 * taplytics: update to 2.0.10

1.7.7 / 2014-09-18
==================

 * Update mixpanel to 2.5.3
 * appsflyer: add logs

1.7.6 / 2014-09-16
==================

  * mixpanel: fix resources being bundled

1.7.5 / 2014-09-08
==================

  * flurry: track screen calls as events (disable via a setting in the web ui)

1.7.4 / 2014-09-08
==================

  * update: mixpanel to 2.5.1

1.7.3 / 2014-08-28
==================

  * fix: remote notification invocation

1.7.2 / 2014-08-28
==================

  * updat: localytics to 2.6.0

1.7.1 / 2014-08-28
==================

  * update: mixpanel to 2.5.0

1.7.0 / 2014-08-27
==================

  * add: appsflyer
  * fix: leak warnings

1.6.2 / 2014-08-26
==================

  * add: add -reset for ga

1.6.1 / 2014-08-25
==================

  * fix: remove log

1.6.0 / 2014-08-25
==================

  * add: testflight
  * fix: queue dispatching to integrations until settings request is finished
  * fix: improve logging for disabled integrations
  * fix: namespace async utils with seg\_

1.5.11 / 2014-08-20
==================

  * fix: remote notification forwarding
  * add: ecommerce to ga

1.5.10 / 2014-08-12
==================

  * update: ga to 3.0.9
  * fix: reachability name clashing

1.5.9 / 2014-08-12
==================

  * fix: add rest of integration headers as public
  * fix: add tests for integration headers to be included as public


1.5.8 / 2014-08-08
==================

  * fix: use introspection for iad

1.5.7 / 2014-08-08
==================

  * fix: enable optimizely's mixpanel integrations
  * fix: add checks for bluetooth symbols before use
  * fix: add build module to improve building the sdk
  * udpate: ga to 3.0.7

1.5.6 / 2014-08-07
==================

  * fix: iad to be weaker

1.5.5 / 2014-08-07
==================

  * fix: include all tapstream headers
  * fix: make advertising managers use anonymous
  * fix: include locale
  * fix: fix thread-safety of SEGLocation


1.5.4 / 2014-08-04
==================

  * fix: analytics version set correctly when installed from cocoapods
  * fix: iad referrer get/set once rather than when queued
  * fix: warning to import top-level framework headers
  * fix: set iad, adsupport, bluetooth as weak frameworks


1.5.3 / 2014-07-31
==================

  * update: optimizely to 0.6.52

1.5.2 / 2014-07-25
==================

  * fix: getting case-insensitive properties with mixpanel
  * fix: weak usage of bluetooth
  * fix: quantcast sessioning
  * add: send referrer data when installed from iad referrer


1.5.1 / 2014-07-20
==================

  * fix: bad import

1.5.0 / 2014-07-20
==================

  * add: optimize
  * remove: apptimize

1.4.0 / 2014-07-17
==================

  * add: -registerForRemoteNotificationsWithDeviceToken:options:

1.3.1 / 2014-06-19
==================
* fix: enabling/disabling integrations

1.3.0 / 2014-06-16
==================
* add: apptimize integration

1.2.1 / 2014-06-19
==================
* fix: manual install issue with taplytics
* fix: build phase error

1.2.0 / 2014-06-10
==================
* add: taplytics integration
* fix: add Analytics.h to public headers
* fix: ci tests

1.1.0 / 2014-06-03
==================
* add: ability to configure the lib with the new SEGAnalyticsConfiguration api

1.0.2 / 2014-05-31
==================
* fix: logging errors
* fix: attempt to flush queue when flushAt is updated
* fix: log when CLLocationManager errors
* fix: document SEGAnalyticsConfiguration

1.0.1 / 2014-05-30
==================
* fix: localytics subspec to dependend on Localytics-iOS-Client podspec
* fix: make parameter asserts more informative
* fix: use xctest

1.0.0 / 2014-05-23
==================
* add: ability to build specific integrations
* fix: using segment's spec
* fix: compiler error not finding +[Flurry setPushToken:]
* fix: make parameter asserts more informative
* fix: use NSCParameterAssert consistently

0.11.5 / 2014-05-14
==================
* fix: using adsupport framework optionally

0.11.4 / 2014-05-14
==================
* fix: incrementing and blocked events in segment integration
* fix: using ASIdentifierManager when adsupport framework isn't linked

0.11.3 / 2014-05-12
==================
* fix: including idfa to tapstream integration

0.11.2 / 2014-06-10
==================
* fix: debug logs to only happen when debug is enabled

0.11.1 / 2014-06-01
==================
* fix: including quantcast headers

0.11.0 / 2014-06-10
==================
* add: quantcast integration
* add: wifi, bluetooth, location, address to be sent
* fix: travisci to use utf-8
* fix: prefix screen events with Viewed
* fix: minor fixes to match segment's spec
* update: localytics depdency

0.10.6 / 2014-06-10
==================
* fix: podspec to require arc

0.10.5 / 2014-4-12
==================
* Added support for Mixpanel increment

0.10.4 / 2014-4-12
==================
* Updated Mixpanel from 2.3.2 to 2.3.4
* Updated Crittercism from 4.3.1 to 4.3.3
* Updated Flurry from 4.3.2 to 4.4.0
* Updated Google Analytics from 3.0.3c to 3.0.6
* Exposed remaining Google Analytics headers
* Added support for Google Analytics userId
* Fixes traits to copy, thanks @realf!

0.10.2 / 2014-3-14
==================
* Updating Amplitude to new 2.0

0.10.1 / 2014-3-1
=================
* Fixing Localytics to arm64 build
* Fixing Mixpanel flush before reset

0.10.0 / 2014-2-23
==================
* Updating Google Analytics SDK to 3.0.3c
* Updating Localytics SDK to AMP 2.22.0
* Updating Mixpanel SDK to 2.3.2
* Removing dependency on AdSupport

0.9.9 / 2014-2-17
=================
* Bundling resources for Mixpanel
* Adding disable/enable methods for handling optout
* Adding reset method for handling user logout
* Updating Flurry, Google Analytics SDKs
* Updated settings url to be https
* Changing settings request to update on app foreground rather than timer

0.9.8 / 2014-2-5
================
* Updating Mixpanel to 2.3.1 and Flurry to 4.3.1
* Adding MPNotification.h

0.9.7 / 2014-1-30
=================
* Ensuring that no "touchdown" references are in the SDK

0.9.6 / 2014-1-27
=================
* Fixing Pods arm64 build issue to fix support for 64-bit devices

0.9.5 / 2014-1-25
=================
* Fixing Pods x86_64 build issue to fix support for 64-bit simulators

0.9.4 / 2014-1-23
=================
* Updating Localytics, Crittercism, Flurry, Google Analytics, Mixpanel and TapStream SDKs
* Removing support for Chartbeat since their lib doesn't have an arm64 slice
* Moving support for Omniture to server-side
* Adding arm64 slice to the fat lib to fully support iOS 7

0.9.3 / 2014-1-14
=================
* Fixing background event handling for Localytics

0.9.2 / 2014-1-10
=================
* Saving userId to disk for persistence between app launches

0.9.1 / 2013-12-29
==================
* Fixing issue with Countly threading
* Adding UUID for tracing events in Segment.io
* Adding timestamp for future time-correction in Segment.io
* Cleaning up docs in Analytics.h

0.9.0 / 2013-12-18
==================
* Setting up Travis-CI testing
* Adding Tapstream support
* Updating Mixpanel to 2.2.1
* Updating Bugsnag to 3.1.0
* Adding Reachability test case to prevent regressions
* Updating minimum iOS version to 6 since only 4% of devices are using older
* Adding support for alias


0.8.0 / 2013-11-27
==================
* Adding Crittercism support
* Fixing Omniture file references in build system

0.7.5 / 2013-11-10
==================
* Adds support for Omniture eVars and props
* Changes "context" to "options"

0.7.4 / 2013-11-8
=================
* Adds support for Mixpanel Surveys
* Adds support for Omniture SiteCatalyst by Adobe
* Improves internal reporting to Segment.io

0.7.3 / 2013-11-8
=================
* Fixes critical issue #60 with NSContainer array subscripting, many thanks to @lhasiuk

0.7.2 / 2013-11-6
=================
* Fixes critical issue #60 with NSContainer array subscripting, many thanks to @lhasiuk

0.7.1 / 2013-11-6
=================
* Fixing issue with Localytics not accepting booleans or integers, only strings.

0.7.0 / 2013-10-29
==================
* Changing debug to a class method
* Updating the internals so that reset method is unnecessary
* Fixing issue with cached settings
* Updating Mixpanel SDK to 2.0.4

0.6.6 / 2013-10-21
==================
* Updating Google Analytics SDK
* Fixing internal version number

0.6.5 / 2013-10-14
==================
* Updating Google Analytics, Chartbeat, Flurry and Amplitude SDKs
* Fixes common linker issue with old Google Analytics SDK

0.6.4 / 2013-10-2
=================
* Fixed identify to allow nil userId

0.6.3 / 2013-9-13
=================
* Fixing backgrounding crash issue
* Improving Countly logging
* Merging @cristianbica's pull request to fix literals syntax for iOS 5

0.6.2 / 2013-9-10
=================
* Queueing before settings cache is loaded the first time
* Flushing data to Segment.io on app close
* Using a custom store in NSUserDefaults to maintain user identity
* Prefixing internal classes to prevent compilation time conflicts
* Updating the Flurry and Mixpanel SDKs (iOS 7 support)
* Adding support for Mixpanel push notifications

0.5.3 / 2013-7-31
=================
* Adding comments, documentation and setup guide to Analytics.h
* Automatically handling app state hooks internally

0.5.2 / 2013-7-12
=================
* Adding Cocoapod podspec, with testing project
* Updating podspec to download from AWS rather than Github Raw

0.5.1 / 2013-7-11
=================
* Fixing build settings to include an armv7s slice, optimized for iPhone 5
* Moving version number to be visible externally from the library

0.5.0 / 2013-7-5
================
* Fixing compile and run-time bugs
* Adding a complete testing app, including for crash reporting tests
* Adding debug logging setting to reduce debug log output by default

0.4.0 / 2013-6-18
================
* Adding provider headers and binaries to project
* Restructuring project for Framework Builds vs CocoaPod builds

0.3.4 / 2013-6-16
================
* Removing Crittercism to avoid HockeySDK PLCrashReporter collisions
* Adding support for context.providers to ProviderManager

0.3.3 / 2013-6-5
================
* Implementing the reset method to help with debugging

0.3.2 / 2013-6-2
================
* Cleaning up NSLogs everywhere

0.3.1 / 2013-6-1
================
* Removing OS X Platform from podfile

0.3.0 / 2013-6-1
================
* Re-architecting the library to bundle providers
* Adding support for Amplitude
* Adding support for Bugsnag
* Adding support for Chartbeat
* Adding support for Countly
* Adding support for Crittercism
* Adding support for Flurry
* Library now downloads the provider settings from the Segment.io server

0.2.2 / 2013-4-24
=================
* Fixing timestamps to include millisecond precision


0.2.1 / 2013-4-16
=================
* Fixing initWithSecret method signature in header file

0.2.0 / 2013-4-16
=================
* Simplifying sessionId to behave the same on iOS 6 as on iOS 5 and OS X
* Fixing reset function to actually destroy userId and roll sessionId

0.1.1 / 2013-4-11
=================
* Added a getSessionId method

0.1.0 / 2013-4-11
=================
* Added a testing suite
* Added context variable, which includes device info and metadata for Segment.io
* Added alias method


0.0.5 / 2013-4-1
================
* Merged fix from @pkamb to fix types in logging statements.

0.0.4 / 2013-3-23
==================
* Removed UDID usage after Apple's announcement that it will no longer be accepted in the app store https://developer.apple.com/news/?id=3212013a
* Renamed repo to analytics-ios-osx

0.0.3 / 2013-3-13
==================
* Made timestamp more accurate
* Added max batch size

0.0.2 / 2013-3-12
==================
* Merged in numerous improvements from [tonyxiao](https://github.com/tonyxiao)
    * support for OSX apps
    * a shared dispatch queue and async flushing
    * removed JSON library dependency to use native JSON support
* Added enqueueAction to DRY things up
* Added an optional initialization method that reveals flushAt and flushAfter
* Added Cocoapods podspec

0.0.1 / 2013-3-9
==================
* Added working library for iOS
* Added README
