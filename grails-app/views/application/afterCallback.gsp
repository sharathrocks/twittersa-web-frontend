<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/twitterSA.css">
</head>
<body>
<div id='searchLoadingOverlay' class='searchLoadingOverlay'></div>
<div id='searchLoadingOverlayTextContainer' class='searchLoadingOverlayTextContainer fixedCenter'><div class='overlaySpinner'></div></div>
<div class='head'>Twitter sentiment analyser</div>
<div class='appDescription'>Check out what twitterzens feel about your favorite topic.</div>
<div class='appDescription line2'>To get started, enter the topic of your interest and hit the search button.</div>
<div class='searchBoxContainer'>
<input class='searchBox' type='text' placeholder='Search Twitter' id="twitterSearchBox">
<input type='button' name='searchButton' class='searchButton' value='Search' id='twitterSearch'>
</div>
<div id='searchOptions' class='optionsText'>

<div>Include Retweets?</div>
<input type='radio' name='includeRetweets' value='0' checked='checked'>No <br>
<input type='radio' name='includeRetweets' value='1'>Yes
</div>

<div class='searchResultsContainer' id='searchResultsContainer'>

</div>
<div class='footer' id='footer'>&copy;&nbsp;Sharath BS, Manipal University, Manipal</div>
<script type='template' id="tweetDisplayTemplate">
<div class="section neutral" data-id="${'<%='}hashId${'%>'}">
	<div class='tweetHeader'>${'<%='}twitterActualName${'%>'}&nbsp;(<a href="http://www.twitter.com/${'<%='}twitterUserName${'%>'}" class="twitter-username" target="_blank">@${'<%='}twitterUserName${'%>'}</a>):</div>
	<div class='tweetTextContent'>${'<%='}tweetText${'%>'}</div>
	<span class='tweetPostedAt'>Posted on: ${'<%='}tweetTime${'%>'}</span>
</div>
</script>
<script type='text/javascript' src='../js/namespace.js'></script>
<script type='text/javascript' src='../js/jquery-2.0.3.js'></script>
<script type='text/javascript' src='../js/underscore.js'></script>
<script type='text/javascript' src='../js/crypto.js'></script>
<script type='text/javascript' src='../js/appMain.js'></script>
</body>
</html>