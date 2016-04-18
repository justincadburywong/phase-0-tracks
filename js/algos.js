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

*/

function compare(object1, object2) {
	for (var key in object1) {
		for (var value in object1) {
			if (object1[key] == object2[key] || object1[value] == object2[value]){
				return true
			} else {
				return false
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


