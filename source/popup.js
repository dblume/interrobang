function whichElement(event){
//    var tname = event.srcElement.getAttribute("data-entity");
    var tname = event.srcElement.innerHTML;
//    alert("You clicked on a " + tname + " element.");
    document.getElementById("ib").value = tname;
    document.getElementById("ib").select();
    document.execCommand("Copy");
    self.close();
}

document.addEventListener('DOMContentLoaded', function () {
  document.addEventListener('mousedown', whichElement);
});


