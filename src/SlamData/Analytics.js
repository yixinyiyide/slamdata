"use strict";

exports._enableAnalytics = function () {
  !function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t){var e=document.createElement("script");e.type="text/javascript";e.async=!0;e.src=("https:"===document.location.protocol?"https://":"http://")+"cdn.segment.com/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n)};analytics.SNIPPET_VERSION="3.1.0";
  analytics.load("nnJaunzB3C3F4YOyYx8ZIgoHXf8KZ4uS");
  analytics.page()
  }}();
};

exports._identify = function (userId) {
  return function (traits) {
    return function () {
      if (window.analytics) window.analytics.identify(userId, traits);
    };
  };
};

exports._track = function (event) {
  return function (props) {
    return function () {
      if (window.analytics) window.analytics.track(event, props);
    };
  };
};
