/*
In algos.js, write a function that takes an array of words or 
phrases and returns the longest word in the array. So if we gave 
your function the array of ["long phrase","longest phrase","longer 
phrase"], it would return "longest phrase". This is a logical 
reasoning challenge, so try to reason through this based on what 
you already know, rather than Googling the fanciest solution or 
looking up built-in sorting functions. Note that "some string".length 
will do what you expect in JS.


set an empty variable to hold the longest word in the array
iterate over the array
get the length of each index of the array
put the first word in the array into the empty variable
if the second word length is longer than the first, replace that in the empty variable
continue iterating over the array until the longest word is in the empty variable
print the empty variable
*/

function searchLongest(array) {
var longestWord = "";
  for (i = 0; i < array.length; i++) {
    if (array[i].length > longestWord.length ) {
      longestWord = array[i];
    }
  }
  return longestWord
}

// Add driver code that tests your function on a few arrays.

console.log(searchLongest(["witbier", "stout", "IPA", "Barrel aged sour porter", "altbier", "american pale ale", "baltic white", "american lager"]))
console.log(searchLongest(["Stone Brewing Company", "Marin Brewing Company", "Almanac", "High Water Brweing Company", "Russian River Brewing Company"]))
console.log(searchLongest(["Whole Foods Market", "Good Earth", "Safeway", "Albertsons", "Vons"]))
/*
In algos.js, write a function that takes two objects and checks to see 
if the objects share at least one key-value pair. (You'll keep adding 
	to this file, so we suggest grouping functions at the top and testing 
	at the bottom of the file.) If we called your function with 
	{name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function 
would return true, because at least one key-value pair matches between 
the two objects. If no pairs match (and keep in mind that the two objects 
	may not even have any of the same keys), the function should return 
false. To make your life easier, don't worry about whether a property is 
a string ('age') or an identifier name (age). Those can be considered 
equivalent. Again, try to reason through the problem using the basics 
you've already learned, rather than looking up slick search functions 
that will do the job for you. We'd rather see you write code that you 
actually understand!



declare the funtion that would take two objects as parameters
find out if the first key or value equals the second
if they do, return true
otherwise, return false


i wanted it to compare the key or the value, and based on that 
evaluate whether they were they same or not.

in my first bit of code, i kept getting 'true' because it was only evaluating
the key 'name', which is true for every circumstance (everybody had a key 
called :name).  i added code to evaluate the value, but i'm not getting 
the result i wanted.  i think this is because i need to compare if the keys are
the same, and if the values are the same to evaluate to true, otherwise
it should evaluate to false...  once more.
*/

/*
function compare(object1, object2) {
	for (var key in object1) {
		 if (object1[key] === object2[key]){
		 	for (var value in object1) {
		 		if (object1[value] === object2[value]){
					return true
				} else {
					return false	
				}
			}
		}
	}
}
*/
function compare(object1, object2){
	for (var key1 in object1) {
		for (var key2 in object2) {
			if (object1[key1] === object2[key2]){
				return true;
			}else{
				return false;
			}
		}
	}

}

// Add some driver code that tests both outcomes of your function.

firstHash = {name: "steven", age: 54}
secondHash = {name: "Tamir", age: 54}
thirdHash = {name: "steven", age: 64}

console.log(compare(firstHash, secondHash))
console.log(compare(firstHash, thirdHash))
console.log(compare(secondHash, thirdHash))




/*
Write a function that takes an integer for length, and builds and 
returns an array of strings of the given length. So if we ran your 
function with an argument of 3, we would get an array of 3 random 
words back (the words don't have to be actual sensical English words
 -- "nnnnfph" totally counts). The words should be of randomly varying 
 length, with a minimum of 1 letter and a maximum of 10 letters. (This 
 involves a new trick, generating a random number, that you'll have to 
 look up, but the solution on how to do so is relatively straightforward.)

define a funtion that takes a number


*/

/*
Add driver code that does the following 10 times: generates an array, 
prints the array, feeds the array to your "longest word" function, and 
prints the result.
*/



