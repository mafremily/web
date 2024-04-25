function liquidar()
{
var sal=document.getElementById("salario").value;
var dia=document.getElementById("dias").value;
sb=parseInt(sal)/30*parseInt(dia);
//alert(sb);
document.getElementById("basico").value=sb;


if(sal >= 1755606)
{
	var subtras=0;
	document.getElementById("st").value=subtras;
}
else
{
	var subtras=102854/30*parseInt(dia);
	document.getElementById("st").value=subtras;
}

var nrohed=document.getElementById("hed").value;
var nrohen=document.getElementById("hen").value;
var nrohedf=document.getElementById("hedf").value;
var nrohenf=document.getElementById("henf").value;

var vrhed=parseInt(sal)/240*parseInt(nrohed)*1.25;
var vrhen=parseInt(sal)/240*parseInt(nrohen)*1.75;
var vrhedf=parseInt(sal)/240*parseInt(nrohedf)*2;
var vrhenf=parseInt(sal)/240*parseInt(nrohenf)*2.5;

totalhe=parseInt(vrhed)+parseInt(vrhen)+parseInt(vrhedf)+parseInt(vrhenf);

document.getElementById("he").value=totalhe;

var otrodev=document.getElementById("otrodev").value;

var devengados=parseInt(sb)+parseInt(subtras)+parseInt(totalhe)+parseInt(otrodev);

document.getElementById("totaldev").value=devengados;


//LIQUIDACION DEDUCIDOS

var epse=(parseInt(sb)-parseInt(subtras))*0.04;
document.getElementById("EPS").value=epse;

var pensione=(parseInt(sb)-parseInt(subtras))*0.04;
document.getElementById("PENSION").value=pensione;

if(devengados >= 1755606*2)
{
	var fondosol=parseInt(devengados)*0.01;
	document.getElementById("FONDO").value=fondosol;
}
else
{
	var fondosol=0;
	document.getElementById("FONDO").value=fondosol;
}




var otrodeducido=document.getElementById("OTROSDEDU").value;

var deducidos=parseInt(epse)+parseInt(pensione)+parseInt(fondosol)+parseInt(otrodeducido);
alert(deducidos);
document.getElementById("TOTALDEDUCIDOS").value=deducidos;

var neto=parseInt(devengados)-parseInt(deducidos);
document.getElementById("NETO").value=neto;



}