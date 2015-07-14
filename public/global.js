function _(el) {
  return document.getElementById(el);
}

var xhr = new XMLHttpRequest();
xhr.open("get", "/api/assignments");

req.addEventListener("load", function(){
  for(var i = 0; i < this.response.length; i++){
    var output = _("stuff");
    output.innerHTML = this.response[i];
  }
});

xhr.responseType = "json";
xhr.send();
