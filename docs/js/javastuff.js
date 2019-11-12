function change(); {
    document.getElementById("myButton1").innerHTML="That is the first one done.";
}

function createP(); {
    var para = document.createElement("p");
    var node = document.createTextNode("This solves the second asignment.");
    para.appendChild(node);
}

function removeP(); {
    var elmnt = document.getElementById("p1");
    elmnt.remove();
}
