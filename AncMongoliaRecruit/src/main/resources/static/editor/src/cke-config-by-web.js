document.querySelectorAll('oembed[url]').forEach( element => {	
	console.log(element.attributes.url.value);
	var url = element.attributes.url.value;
	if(url.indexOf("youtu") > -1){
		var retxt = url.substr(url.lastIndexOf("/")+1, url.length);
		element.outerHTML = '<div style="position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;">' +
									'<iframe src="https://www.youtube.com/embed/'+retxt+'"' +
									'style="position: absolute; width: 100%; height: 100%; top: 0; left: 0;" ' +
									'frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>' +
									'</iframe>' +
									'</div>';
	}else if(url.indexOf("localhost") > -1){
		var retxt = url.substr(url.lastIndexOf("/")+1, url.length);
		if(retxt == "banner1.html"){
			element.outerHTML = 	'<div style="position: relative; height:15rem;">' +
										'<iframe src="http://localhost:8088/embed/'+retxt+'"' +
										'style="position: absolute; width:100%; height:15rem; top:0; left:0;" ' +
										'frameborder="0" scrolling="no">' +
										'</iframe>' +
										'</div>';
		}else{
			element.outerHTML = 	'<div style="position: relative; height:30rem;">' +
										'<iframe src="http://localhost:8088/embed/'+retxt+'"' +
										'style="position: absolute; width:100%; height:30rem; top:0; left:0;" ' +
										'frameborder="0" scrolling="no">' +
										'</iframe>' +
										'</div>';	
		}
	}
});

document.querySelectorAll('figure').forEach( element => {
	console.log(element);
});

function setFrameHeight(obj){
	if(obj.contentDocument){
      console.log(obj.contentDocument.body.offsetHeight + 40);  
		obj.height = obj.contentDocument.body.offsetHeight + 40;
      
    } else {
    	console.log(obj.contentWindow.document.body.scrollHeight);  
    	obj.height = obj.contentWindow.document.body.scrollHeight;
      
    }
}