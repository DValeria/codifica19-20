function gestoreSelezionaImg1 () {
    try {
        nodoImgLetter1.setAttribute ("style", "display:block");
        nodoImgLetter2.setAttribute("style", "display: none");
        nodoImgLetter3.setAttribute("style", "display: none");
        nodoImgLetter4.setAttribute("style", "display: none");
        nodoIcona1.setAttribute("class", "clickIcona");
        nodoIcona2.setAttribute("class", "noClickIcona");
        nodoIcona3.setAttribute("class", "noClickIcona");
        nodoIcona4.setAttribute("class", "noClickIcona");
    } catch ( e ) {
        alert ("gestoreSelezionaImg1" + e);
    }
}

function gestoreSelezionaImg2 () {
    try {
        nodoImgLetter1.setAttribute ("style", "display:none");
        nodoImgLetter2.setAttribute("style", "display: block");
        nodoImgLetter3.setAttribute("style", "display: none");
        nodoImgLetter4.setAttribute("style", "display: none");
        nodoIcona1.setAttribute("class", "noClickIcona");
        nodoIcona2.setAttribute("class", "clickIcona");
        nodoIcona3.setAttribute("class", "noClickIcona");
        nodoIcona4.setAttribute("class", "noClickIcona");
    } catch ( e ) {
        alert ("gestoreSelezionaImg2" + e);
    }
}

function gestoreSelezionaImg3 () {
    try {
        nodoImgLetter1.setAttribute ("style", "display:none");
        nodoImgLetter2.setAttribute("style", "display: none");
        nodoImgLetter3.setAttribute("style", "display: block");
        nodoImgLetter4.setAttribute("style", "display: none");
        nodoIcona1.setAttribute("class", "noClickIcona");
        nodoIcona2.setAttribute("class", "noClickIcona");
        nodoIcona3.setAttribute("class", "clickIcona");
        nodoIcona4.setAttribute("class", "noClickIcona");
    } catch ( e ) {
        alert ("gestoreSelezionaImg3" + e);
    }
}

function gestoreSelezionaImg4 () {
    try {
        nodoImgLetter1.setAttribute ("style", "display:none");
        nodoImgLetter2.setAttribute("style", "display: none");
        nodoImgLetter3.setAttribute("style", "display: none");
        nodoImgLetter4.setAttribute("style", "display: block");
        nodoIcona1.setAttribute("class", "noClickIcona");
        nodoIcona2.setAttribute("class", "noClickIcona");
        nodoIcona3.setAttribute("class", "noClickIcona");
        nodoIcona4.setAttribute("class", "clickIcona");
    } catch ( e ) {
        alert ("gestoreSelezionaImg4" + e);
    }
}

function pointer (name) {  
    for (var i = 0; i < 90; i++) {
        document.getElementsByTagName('a').item([i]).className='resetPointer';
        document.getElementsByName(name).item(0).className='pointer';
    } 
}
   
var nodoIcona1;
var nodoIcona2;
var nodoIcona3;
var nodoIcona4;
var nodoImgLetter1;
var nodoImgLetter2;
var nodoImgLetter3;
var nodoImgLetter4;

function gestoreLoad () {
    try {
        nodoIcona1 = document.getElementById("num1");
        nodoIcona2 = document.getElementById("num2");
        nodoIcona3 = document.getElementById("num3");
        nodoIcona4 = document.getElementById("num4");
        nodoIcona1.onclick = gestoreSelezionaImg1;
        nodoIcona2.onclick = gestoreSelezionaImg2;
        nodoIcona3.onclick = gestoreSelezionaImg3;
        nodoIcona4.onclick = gestoreSelezionaImg4; 
        nodoImgLetter1 = document.getElementById("imgLetter1");
        nodoImgLetter2 = document.getElementById("imgLetter2");
        nodoImgLetter3 = document.getElementById("imgLetter3");
        nodoImgLetter4 = document.getElementById("imgLetter4");
        nodoImgLetter2.setAttribute("style", "display: none");
        nodoImgLetter3.setAttribute("style", "display: none");
        nodoImgLetter4.setAttribute("style", "display: none");
    } catch ( e ) {
        alert("gestoreLoad" + e)
    }
}

window.onload = gestoreLoad;