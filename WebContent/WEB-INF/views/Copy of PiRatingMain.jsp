<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
html, body {
	height: 100%;
	margin:0 auto;
	font-size: 11px;
	font-family:'Helvetica';
	background: #f4f5f5;
}
.switch {
  position: relative;
  display: inline-block;
  vertical-align: top;
  width: 52px;
  height: 20px;
  padding: 3px;
  margin-left:-6px;
  background-color: white;
  border-radius: 18px;
  box-shadow: inset 0 -1px white, inset 0 1px 1px rgba(0, 0, 0, 0.05);
  cursor: pointer;
  background-image: -webkit-linear-gradient(top, #eeeeee, white 25px);
  background-image: -moz-linear-gradient(top, #eeeeee, white 25px);
  background-image: -o-linear-gradient(top, #eeeeee, white 25px);
  background-image: linear-gradient(to bottom, #eeeeee, white 25px);
}

.switch-input {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}

.switch-label {
  position: relative;
  display: block;
  height: inherit;
  font-size: 10px;
  text-transform: uppercase;
  background: #eceeef;
  border-radius: inherit;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.12), inset 0 0 2px rgba(0, 0, 0, 0.15);
  -webkit-transition: 0.15s ease-out;
  -moz-transition: 0.15s ease-out;
  -o-transition: 0.15s ease-out;
  transition: 0.15s ease-out;
  -webkit-transition-property: opacity background;
  -moz-transition-property: opacity background;
  -o-transition-property: opacity background;
  transition-property: opacity background;
}
.switch-label:before, .switch-label:after {
  position: absolute;
  top: 50%;
  margin-top: -.5em;
  line-height: 1;
  -webkit-transition: inherit;
  -moz-transition: inherit;
  -o-transition: inherit;
  transition: inherit;
}
.switch-label:before {
  content: attr(data-off);
  right: 7px;
  color: #aaa;
  text-shadow: 0 1px rgba(255, 255, 255, 0.5);
}
.switch-label:after {
  content: attr(data-on);
  left: 11px;
  color: white;
  text-shadow: 0 1px rgba(0, 0, 0, 0.2);
  opacity: 0;
}
.switch-input:checked ~ .switch-label {
  background: #47a8d8;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.15), inset 0 0 3px rgba(0, 0, 0, 0.2);
}
.switch-input:checked ~ .switch-label:before {
  opacity: 0;
}
.switch-input:checked ~ .switch-label:after {
  opacity: 1;
}

.switch-handle {
  position: absolute;
  top: 4px;
  left: 4px;
  width: 18px;
  height: 18px;
  background: white;
  border-radius: 10px;
  box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
  background-image: -webkit-linear-gradient(top, white 40%, #f0f0f0);
  background-image: -moz-linear-gradient(top, white 40%, #f0f0f0);
  background-image: -o-linear-gradient(top, white 40%, #f0f0f0);
  background-image: linear-gradient(to bottom, white 40%, #f0f0f0);
  -webkit-transition: left 0.15s ease-out;
  -moz-transition: left 0.15s ease-out;
  -o-transition: left 0.15s ease-out;
  transition: left 0.15s ease-out;
}
.switch-handle:before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -6px 0 0 -6px;
  width: 12px;
  height: 12px;
  background: #f9f9f9;
  border-radius: 6px;
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.02);
  background-image: -webkit-linear-gradient(top, #eeeeee, white);
  background-image: -moz-linear-gradient(top, #eeeeee, white);
  background-image: -o-linear-gradient(top, #eeeeee, white);
  background-image: linear-gradient(to bottom, #eeeeee, white);
}
.switch-input:checked ~ .switch-handle {
  left: 36px;
  box-shadow: -1px 1px 5px rgba(0, 0, 0, 0.2);
}

.switch-green > .switch-input:checked ~ .switch-label {
  background: #4fb845;
}
#container{
	width:80%;
	position:relative;
	height:100%;
	margin:0 auto;
	border: 1px solid #c7c7c7;
    border-top: 0px;
    background-color: #fff;
    box-shadow: 0 0 4px 0px rgba(0, 0, 0, 0.35);
	margin-top:20px;
	margin-bottom:20px;
}
.left{
	float:left;
	width:19.9%;
	height:100%;
	text-align:center;
	background-color:#f9f9f9;
	display:block;
	border-right:1px solid #ccc;
}
.right{
	float:left;
	width:80%;
	height:auto;
	min-height:100%;
	display:block;
	position:relative;
	background-color:#f0f0f0;
}
.center{
	text-align:center;
}
.tabClass{
	padding:10px;
	background-color:#f0f0f0;
	color:#000;
	border-bottom:1px solid #ccc;
	
}
.floatLeft{
	float:left;
	vertical-align:middle;
	position:relative;
	padding:10px;
}
.swithLabelAlign{
	float:left;
	padding: 2px 10px 0px 10px;
}
.containerDiv{
	width:100%;
	height:100%;
	position:relative;
}
.sNo{
	width:1%;
}
.question{
	width: 60%;
}
.yesNo{
	width: 15%;
}
.remark{
	width: 14%;
}
.fullWidth{
	width:100%;
	box-sizing:border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	display:inline-block;
	}
.hairline{
	border-bottom:1px solid #ccc;
	box-sizing:border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	display:inline-block;
	width:100%;
}
.headerDiv{
	background-color:#d0d0d0;
	color:#FFF;
	padding:10px;
	font-weight:bold;
	font-size:12px;
	border-bottom:1px solid #dedede; 
}
.insuredName{
	width:10%;
}
.insuredInput{
	width:66%;
	padding:5px;
}
input.insuredInput{
	width:100%;
}
input.inputStyle{
	width:98%;
	border:1px solid #dedede; 
	height:26px; 
	border-radius:4px; 
	-webkit-border-radius:4px;
	-moz-border-radius:4px;
	-ie-border-radius: 4px;
	text-transform:uppercase;
	box-sizing: border-box;
	padding-left: 4px;
	outline: none;
}
.percentageInput{
	width:54px;
	border:1px solid #dedede; 
	height:26px; 
	border-radius:4px; 
	-webkit-border-radius:4px;
	-moz-border-radius:4px;
	-ie-border-radius: 4px;
	text-transform:uppercase;
	box-sizing: border-box;
	padding-left: 4px;
	outline: none;
	margin:5px 0px 5px 0px;
}
.activity{
	width:47.68%;
}
.activityDiv{ width:100%;}
.percentageHeader{
	text-align:left;
	padding-left:80px;
}
.yearCol{
	width:40%;
}
.countryCol{
	width:10%;
}
button.accordion {
    cursor: pointer;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    transition: 0.4s;
	border-bottom:1px solid #dedede;
}

button.accordion.active, button.accordion:hover {
    background-color: #ddd;
}

button.accordion:after {
    background-image: url("img/toggle-down.png") no-repeat;
	width: 15px;
	height: 10px;
    color: #777;
    float: right;
    margin-left: 5px;
}

button.accordion.active:after {
    background-image: url("img/toggle-up.png") no-repeat;
	width: 15px;
	height: 10px;
}

div.panel {
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
}
</style>
</head>
<body onload="onLoad();">
<div id="container">
	<div class="left">
		<div class="tabClass">Tab 1</div>
		<div class="tabClass">Tab 2</div>
		<div class="tabClass">Tab 3</div>
		<div class="tabClass">Tab 4</div>
		<div class="tabClass">Tab 5</div>
	</div>
	<div class="right">
		<div class="containerDiv">
			<button class="headerDiv accordion">Applicant Details</button>
			
			<div class="panel">
			<div class="hairline">
			<div class="sNo floatLeft">1.</div>
			<div class="insuredName floatLeft">Name of Insured:</div>
			<div class="insuredInput swithLabelAlign"><input type="text" class="inputStyle"></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft">2.</div>
			<div class="insuredName floatLeft">Address(es):</div>
			<div class="insuredInput swithLabelAlign"><input type="text" class="inputStyle"></div>
			</div>
			<div id="htmlInjectingDiv"></div>
			</div>
			
			<button class="headerDiv accordion">Business Activities</button>
			<div class="panel">
			<div class="hairline">
			<div class="sNo floatLeft">4.</div>
			<div class="question floatLeft">During the past 5 years, has the name of the Insured(s) been changed?</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
						
			<div class="hairline">
			<div class="sNo floatLeft">5.</div>
			<div class="question floatLeft">During the past 5 years, has any other business(es) been purchased, merged or consolidated with the Insured?</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft">6.</div>
			<div class="question floatLeft">Please indicate the type of professional services provided and the approximate percentage of each relative to the Firm's total gross fee income</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			
			<div class="activityDiv">
			<div class="headerDiv activity floatLeft">7. Activity/ Nature of Work</div>
			<div class="headerDiv activity floatLeft"><div class="percentageHeader">Percentage (%) of Fee Income</div>
			</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Architecture</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Interior Design</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft"><strong>Total</strong></div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			<div class="remark floatLeft"></div>
			</div>
			
			<div class="fullWidth">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft"><strong>Please give the following fee income details:</strong></div>
			<div class="yesNo swithLabelAlign"></div>
			<div class="remark floatLeft"></div>
			</div>
				
			<div class="">
			<div class="sNo floatLeft"></div>
			<div class="yearCol floatLeft headerDiv">Year</div>
			<div class="countryCol floatLeft headerDiv">Domestic</div>
			<div class="countryCol floatLeft headerDiv">USA/CANADA</div>
			<div class="countryCol floatLeft headerDiv">Elsewhere</div>
			<div class="countryCol floatLeft headerDiv">Total</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="yearCol floatLeft">Previous Completed Financial Year</div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="yearCol floatLeft">Current Financial Year</div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="yearCol floatLeft">Estimate of Financial Year</div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			<div class="countryCol floatLeft"><input type="text" class="percentageInput"/></div>
			</div>
			</div>
			
			<button class="headerDiv accordion">Risk Management</button>
			<div class="panel">
			<div class="hairline">
			<div class="sNo floatLeft">9</div>
			<div class="question floatLeft">Does legal counsel always review your contracts, including changes to standard contracts/ letters of engagement?</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft">10</div>
			<div class="question floatLeft">Does the firm use sub-contractors? (sub-contractors includes any "outside consultants")</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			</div>
			
			<button class="headerDiv accordion">Insurance & Loss History</button>
			<div class="panel">
			<div class="hairline">
			<div class="sNo floatLeft">11</div>
			<div class="question floatLeft">Is any partner, director or principal after inquiry aware of any claims ever been made against the Insured(s) or their predecessors in business or any of the present or former partners, directors or principals?</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft">12</div>
			<div class="question floatLeft">Is any partner, director or principal after inquiry, aware of any circumstances or occurrences which may give rise to a claim against the Insured or their predecessors in business or any of the present or former partners, directors or principals?</div>
			<div class="yesNo swithLabelAlign"><label class="switch">
			  <input type="checkbox" class="switch-input" id="flip-1">
			  <span class="switch-label" id="flip-1" data-on="Yes" data-off="No"></span>
			  <span class="switch-handle"></span>
			</label></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft">13</div>
			<div class="question floatLeft">Previous Policy details</div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Period</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Insurer</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Limit</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft"></div>
			<div class="question floatLeft">Excess</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			
			<div class="hairline">
			<div class="sNo floatLeft">14</div>
			<div class="question floatLeft">Please specify Limit of Liability desired</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			<div class="remark floatLeft">Pass</div>
			</div>
			<div class="hairline">
			<div class="sNo floatLeft">15</div>
			<div class="question floatLeft">Please specify Deductible desired</div>
			<div class="yesNo swithLabelAlign"><input type="text" class="percentageInput"/></div>
			</div>
			
			</div>
		</div>
	</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>

function onLoad()
{
	loadAccodion();
	
	firstAjaxCall();
}

function firstAjaxCall()
{
	$.ajax({

	    /* url : 'http://voicebunny.comeze.com/index.php', */
	    url : 'lion.do',
	    type : 'POST',
	    data : {
	        'numberOfWords' : 10
	    },
	    dataType:'json',
	    success : function(response) {              
	        alert('Response from Controller : '+response.htmlString);
	        
	        $("#htmlInjectingDiv" ).html(response.htmlString);
	        
	    },
	    error : function(request,error)
	    {
	        alert("Request: "+JSON.stringify(request));
	    }
	});
}

function loadAccodion()
{
	var acc = document.getElementsByClassName("accordion");

	for (var i = 0; i < acc.length; i++) {
	  acc[i].onclick = function() {
	    this.classList.toggle("active");
	    var panel = this.nextElementSibling;
	    if (panel.style.maxHeight){
	      panel.style.maxHeight = null;
	    } else {
	      panel.style.maxHeight = panel.scrollHeight + "px";
	    } 
	  };
	}		
}
</script>

</body>
</html>