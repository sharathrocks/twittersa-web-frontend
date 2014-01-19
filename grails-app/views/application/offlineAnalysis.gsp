<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/twitterSA.css">
</head>
<body>
<div class='head'>Offline sentiment analyser</div>
<div class='appDescription'>To get started, enter a sentence and hit the analyse button.</div>
<div class='searchBoxContainer'>
<div><textarea class='offlineAnalyseTextArea' placeholder='Analyze Sentence' id="offlineAnalyseText"></textarea></div>
<div class='analyseButton' id='analyseButton'></div>
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