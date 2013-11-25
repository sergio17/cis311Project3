var global;
function validateForm() {
		var product = document.forms["productForm"]["productName"].value;
		var s = document.forms["productForm"]["stock"].value;
		var p = document.forms["productForm"]["price"].value;
		if(product == null|| s == ""|| p ==""||product == ""|| s == null|| p ==null){
			alert("user must fill out the appropriate fields");
			return false;
		}
		// global =1;
		// display();
}
function display(arg)
{
	var d = new Date();
	
	if(arg ==1){
		var test = window.open("./confirm.html","_self", "",true);
		var x = "This product has been added!<br> "
		var z = x + d;
		// document.write("hello world");
		test.document.getElementById("confirmMe").innerHTML=x;
	    // setTimeout(window.open("./index.html", "_parent"), 8000); // after 2 sec it will close
	}


}