



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>唐风汉语-泡泡大作战</title>
	<link rel="manifest" href="js/appmanifest.json" />
	
	<!-- Allow fullscreen mode on iOS devices. (These are Apple specific meta tags.) -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link rel="apple-touch-icon" sizes="256x256" href="images/icon-256.png" />
	<meta name="HandheldFriendly" content="true" />
	
	<!-- Chrome for Android web app tags -->
	<meta name="mobile-web-app-capable" content="yes" />
	<link rel="shortcut icon" sizes="256x256" href="images/icon-256.png" />

    <!-- All margins and padding must be zero for the canvas to fill the screen. -->
	<style type="text/css">
		* {
			padding: 0;
			margin: 0;
		}
		html, body {
			background:url("images/bg-sheet0.png") ;
			background-size:300%;
			color: #fff;
			overflow: hidden;
			touch-action: none;
			-ms-touch-action: none;
		}
		canvas {
			touch-action-delay: none;
			touch-action: none;
			-ms-touch-action: none;
		}
    </style>
</head>

<body class="emp_body">
<div class="main_out">

<!--顶部内容开始-->
<div class="top_form">


<!--菜单开始-->
<div class="main_menu_out">

</div>
<!--菜单结束-->

<!--Logo开始-->
<div class="logo"></div>
<!--Logo结束-->

</div>
<!--顶部内容结束-->

<!--大图开始-->
<div class="bigpic_small"></div>
<!--大图结束-->

<!--主要内容开始-->
<div class="cont_out" style="min-height:360px;">
<div style="clear:both;"></div>
<!--列表开始-->
    
    <div id="fb-root"></div>
	
	<script>
	// Issue a warning if trying to preview an exported project on disk.
	(function(){
		// Check for running exported on file protocol
		if (window.location.protocol.substr(0, 4) === "file")
		{
			alert("Exported games won't work until you upload them. (When running on the file:/// protocol, browsers block many features from working for security reasons.)");
		}
	})();
	</script>
	
	<!-- The canvas must be inside a div called c2canvasdiv -->
	<div id="c2canvasdiv">
	
		<!-- The canvas the project will render to.  If you change its ID, don't forget to change the
		ID the runtime looks for in the jQuery events above (ready() and cr_sizeCanvas()). -->
		<canvas id="c2canvas" width="960" height="472">
			<!-- This text is displayed if the visitor's browser does not support HTML5.
			You can change it, but it is a good idea to link to a description of a browser
			and provide some links to download some popular HTML5-compatible browsers. -->
			<h1>Your browser does not appear to support HTML5.  Try upgrading your browser to the latest version.  <a href="http://www.whatbrowser.org">What is a browser?</a>
			<br/><br/><a href="https://www.microsoft.com/edge">Microsoft Edge</a><br/>
			<a href="http://www.mozilla.com/firefox/">Mozilla Firefox</a><br/>
			<a href="http://www.google.com/chrome/">Google Chrome</a><br/>
			<a href="http://www.apple.com/safari/download/">Apple Safari</a></h1>
		</canvas>
		
	</div>
	
	<!-- Pages load faster with scripts at the bottom -->
	
	<!-- Construct 2 exported games require jQuery. -->
	<script src="js/jquery-3.4.1.min.js"></script>

	<script src="js/adapter.js"></script>

	
    <!-- The runtime script.  You can rename it, but don't forget to rename the reference here as well.
    This file will have been minified and obfuscated if you enabled "Minify script" during export. -->
	<script src="js/c2runtime.js"></script>

    <script>
		// Start the Construct 2 project running on window load.
		jQuery(document).ready(function ()
		{			
			// Create new runtime using the c2canvas
			cr_createRuntime("c2canvas");
		});
		
		// Pause and resume on page becoming visible/invisible
		function onVisibilityChanged() {
			if (document.hidden || document.mozHidden || document.webkitHidden || document.msHidden)
				cr_setSuspended(true);
			else
				cr_setSuspended(false);
		};
		
		document.addEventListener("visibilitychange", onVisibilityChanged, false);
		document.addEventListener("mozvisibilitychange", onVisibilityChanged, false);
		document.addEventListener("webkitvisibilitychange", onVisibilityChanged, false);
		document.addEventListener("msvisibilitychange", onVisibilityChanged, false);
		
		function OnRegisterSWError(e)
		{
			console.warn("Failed to register service worker: ", e);
		};
		
		// Runtime calls this global method when ready to start caching (i.e. after startup).
		// This registers the service worker which caches resources for offline support.
		window.C2_RegisterSW = function C2_RegisterSW()
		{
			if (!navigator.serviceWorker)
				return;		// no SW support, ignore call
			
			try {
				navigator.serviceWorker.register("js/sw.js", { scope: "./js/" })
				.then(function (reg)
				{
					console.log("Registered service worker on " + reg.scope);
				})
				.catch(OnRegisterSWError);
			}
			catch (e)
			{
				OnRegisterSWError(e);
			}
		};
    </script>
    <!--列表结束-->
</div>
<!--主要内容结束-->

<!--尾栏开始-->
<!--尾栏结束-->

</div>
</body>
</html>
