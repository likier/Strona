function zmien()
{
	var color1= document.getElementById("pole").value;
    document.getElementById("container").style.color=color1;
	document.getElementById("animation-bar").style.color=color1;
	localStorage.color=color1;
}
function wczytaj() 
{
	document.getElementById("container").style.color=localStorage.color;
	document.getElementById("animation-bar").style.color=localStorage.color;
	
}
function zmien2()
{
	var color1= document.getElementById("pole2").value;
    document.getElementById("container").style.color=color1;
	document.getElementById("animation-bar").style.color=color1;
	sessionStorage.color=color1;
}
function wczytaj2() 
{
	document.getElementById("container").style.color=sessionStorage.color;
	document.getElementById("animation-bar").style.color=sessionStorage.color1;
	
}
function myFunction()
 {
  var para1 = document.createElement("li");
  para1.innerHTML = "Wsypanie yerba mate do tykwy tak, by wypełnić 3/4 jej objętości,";
  document.getElementById("java").appendChild(para1);
  var para2 = document.createElement("li");
  para2.innerHTML = "Zalanie suszu wodą o temperaturze 75 °C i odstawienie na 24 h, dzięki czemu nasiąknie ono esencją Yerba Mate,";
  document.getElementById("java").appendChild(para2);
  var para3 = document.createElement("li");
  para3.innerHTML = "Zgodnie z indywidualnymi oczekiwaniami, nasączanie z użyciem świeżego suszu można powtarzać nawet 3 lub 4 razy – wówczas fusy należy zostawić w naczyniu na noc i opróżniać tykwę dopiero przed jej ponownym wypełnieniem świeżym suszem.";
  document.getElementById("java").appendChild(para3);
  var item=document.getElementById("guz");
  item.parentNode.removeChild(item);
}
function removeLi() 
{
	var item=document.getElementById("java");
	var img = document.createElement("h1");
	img.innerHTML="<strong>Smacznego!<strong>";
	item.parentNode.replaceChild(img,item);
	var item2=document.getElementById("guz2");
	item2.parentNode.removeChild(item2);
}
	