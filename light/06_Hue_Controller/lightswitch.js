/*
Source code written by Nathanaël Lécaudé
Modification by Josephine Wang
*/

autowatch = 1;

var ajaxreq; 
var duration = 10;


function transition(_duration)
{
	duration = _duration;
}


function on(ip, key, id, state)
{
	ajaxreq = new XMLHttpRequest();
	ajaxreq.open("PUT",'http://' + ip + '/api/' + key +'/lights/' + id + '/state');
	ajaxreq.onreadystatechange = readystatechange_parsejson;
	if (state == 1)
		ajaxreq.send('{"on": true, "transitiontime": ' + duration + '}');
	if (state == 0)
		ajaxreq.send('{"on": false, "transitiontime": ' + duration + '}');
}
	
// Here we fetch data and use javascript's internal JSON.parse method to read
// individual elements from and array of objects (aka dictionaries)
function readystatechange_parsejson()
{

	if (this.readyState == 4){
		post(this.responseText);
	}
}