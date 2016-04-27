console.log("The script is running!");

function addElement() {
	var newElement = document.createElement("div");
	var newContent = document.createTextNode("Hi there and greetings!"); 
  newElement.appendChild(newContent);

	var ourDiv = document.getElementById("second_div");
	document.body.insertBefore(newElement, ourDiv);
}

// addElement();


function changeStyle() {
	var changeColor = document.getElementById("Frustrated_first_header");
	changeColor.style.backgroundColor = "black";
}


// changeStyle();