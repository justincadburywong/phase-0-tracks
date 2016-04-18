// declare a function called  =reverse that takes a (str);
//   then call the (str) to split each letter in place, including spaces
//	 call .reverse on the whole string
//   join everything back together into one string, including spaces
// make sure to console.log(the variable =reverse(with a parameter!))
// add lots of ())();););(;(;(;);)) 


function reverse(str) {
	return str.split('').reverse().join('');
}

newString = reverse("i want this to work out!");

for(var i = 0; i < 1; i++) {
	console.log(newString);
}


