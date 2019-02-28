use AppleScript version "2.4" -- Yosemite (10.10) or later
 * This script attempts to give you a 'reasonable' size window regardless of your screen,
 * and/or application.  It does this by triggering the 'zoom' event on the window.  This event
 * is 'smart', and will attempt to make the window just the right size for the contents.  Mostly
 * this works reasonably well, and with Safari, which is why I originally wrote it, this works
 * quite well.
 *
 * This works very well as a Service created with Automator.
 *)