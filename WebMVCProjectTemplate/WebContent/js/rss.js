//rss.js
var xhr = new XMLHttpRequest();	//ajax

function init(){
	var links = document.querySelectorAll("div[data-role='content'] p > a");

	for(var i=0, n=links.length ; i<n; i++) {
		//console.log(links[i]);
		links[i].addEventListener('click', getRssData);
	}
};
function getRssData(event) {
    //event.preventDefault(); //
    var rss_url = this.dataset.rssurl;
    if (rss_url == "") {
    	alert('RSS address is empty.');
    	return false;
    }
    
    xhr.onreadystatechange = function() {
    	if(xhr.readyState == 4 && xhr.status == 200){
    	    displayResult(xhr.responseXML);//
	    }
	};
	rss_url = encodeURIComponent(rss_url);//
	
	var param = "";
    if(this.dataset.charset) {
    	param = "rssurl=" + rss_url + "&charset=" + this.dataset.charset;
    }else {
    	param = "rssurl=" + rss_url;
    }
    
	xhr.open("GET", "/news/proxy.do?" + param, true);
	xhr.send(null);
}
function displayResult(result) {
    var items = result.querySelectorAll('item');
    //console.log(items.length);

	var target = document.querySelector("#news_rss div[data-role=content] .content-list");

	target.innerHTML = "";
    
	for(var i=0, n=items.length; i<n; i++) {
		var title = items[i].querySelector('title').textContent;//
		//var title = items[i].getElementsByTagName('title')[0].textContent; 
		var link = items[i].querySelector('link').textContent;//
		var desc = items[i].querySelector('description').textContent;//
		var t_el = document.createElement("p");	//<p> 
		
		t_el.innerHTML = (i+1) +". <a href='" + link + "'>" + title + "</a><span>" + desc + "</span>";
		target.appendChild(t_el); 
    }
};

init();