window.onload = function(){
	var table = document.getElementById("caltable");
	var cells = table.getElementsByTagName("th");

	var current = 0,last =0;
	document.getElementById("dis").innerHTML = current;



	for(var i=0;i<cells.length;i++){
		cells[i].onclick = function(){
			var input = this.innerHTML;
			if(input == "AC"){
				current = 0;
				document.getElementById("dis").innerHTML = 0;
			}else if(input == "+/-"){
				current *= -1;
				document.getElementById("dis").innerHTML *= -1;
			}else{
				current = current == 0 ? input: current+input;
				document.getElementById("dis").innerHTML = current;
			}



			//document.getElementById("demo").innerHTML = this.innerHTML;
		}
	}

	

}