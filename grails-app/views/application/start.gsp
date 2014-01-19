<html>
<head>
<link rel="stylesheet" type="text/css" href="css/twitterSA.css">
</head>
<body>

<div class='head'>Twitter Sentiment Analyser</div>
<div class='appDescription'>Check out what twitterzens feel about your favorite topic.</div>
<div class='appDescription line2'>To get started, please sign in with your Twitter account.</div>
<oauth:connect provider="twitter" class='signInButton' id='signInButton'></oauth:connect>
<div class='offlineAnalysis' id='offlineAnalysis'></div>
<div class='footer' id='footer'>&copy;&nbsp;Sharath BS, Manipal University, Manipal</div>
<script type='text/javascript' src='js/jquery-2.0.3.js'></script>
<script type='text/javascript' src='js/mainPage.js'></script>
</body>
</html>