var result=0;

for (var i = 0; i <= 1000; i++) {
	if(i%3==0&&i%5==0){
		result+=i;
	}
};

function aaa(a,b){
	return a+b;
}

function change_background_color(x){
   x.style.background='gray';
      x.style.height = "64px";
    x.style.width = "64px";
    document.getElementById("div2change").innerHTML=10;
}