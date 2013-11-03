<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/twitterSA.css">
</head>
<body>
<div id='searchLoadingOverlay' class='searchLoadingOverlay'></div>
<div id='searchLoadingOverlayTextContainer' class='searchLoadingOverlayTextContainer fixedCenter'><div class='overlaySpinner'></div></div>
<div class='head'>Twitter sentiment analyser</div>
<div class='appDescription'>Discover the Twitter sentiment for a product or brand.</div>
<div class='searchBoxContainer'>
<input class='searchBox' type='text' placeholder='Search Twitter' id="twitterSearchBox">
<input type='button' name='searchButton' class='searchButton' value='Search' id='twitterSearch'>
</div>

<div class='searchResultsContainer' id='searchResultsContainer'>

</div>

<script type='template' id="tweetDisplayTemplate">
<div class="section neutral">
	<div class='tweetHeader'>${'<%='}twitterActualName${'%>'}&nbsp;(<a href="http://www.twitter.com/${'<%='}twitterUserName${'%>'}" class="twitter-username" target="_blank">@${'<%='}twitterUserName${'%>'}</a>):</div>
	<div class='tweetTextContent'>${'<%='}tweetText${'%>'}</div>
	<span class='tweetPostedAt'>Posted on: ${'<%='}tweetTime${'%>'}</span>
</div>
</script>
<script type='text/javascript' src='../js/namespace.js'></script>
<script type='text/javascript' src='../js/jquery-2.0.3.js'></script>
<script type='text/javascript' src='../js/underscore.js'></script>
<script type='text/javascript' src='../js/appMain.js'></script>
</body>
</html>