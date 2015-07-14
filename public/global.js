function _(el) {
  return document.getElementById(el);
}

// function insertAfter(newNode, referenceNode) {
//   referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
// }

var xhr = new XMLHttpRequest();
xhr.open("get", "/api/assignments");

req.addEventListener("load", function(){
  for(var i = 0; i < this.response.length; i++){
    var output = _("stuff");
    output.innerHTML = this.response[i];
  }
});

// req.addEventListener("load", function(){
//   for(var i = 0; i < this.response.length; i++){
//     var container = _("main");
//     var container_ul = _("listhere");
//
//     // container.innerHTML = this.response[i];
//     descript_li=this.response[i].description
//     add_li = document.createElement("li");
//     add_li.innerHTML=descript_li;
//     insertAfter(add_li, container_ul);
//   }
// })

xhr.responseType = "json";
xhr.send();

//
// for (var key in p) {
//   if (p.hasOwnProperty(key)) {
//     alert(key + " -> " + p[key]);
//   }
// }
//
// var obj = {a: 1, b: 2};
// for (var key in obj) {
//   if (obj.hasOwnProperty(key)) {
//     var val = obj[key];
//     console.log(val);
//   }
// }
