// declare a function called  =reverse that takes a (str);
//   then call the (str) to .reverse by calling what is in 'quotes' 
//   to reverse("this will be reversed")
// make sure to console.log(the variable =reverse(with a parameter!))
// add lots of ())();););(;(;(;);)) 


function reverse(str) {
	return str.split('').reverse().join("");
}

console.log(reverse("i want this to work out!"));