var colors = ["blue", "green", "purps", "orange", "grey"];
var names = ["william", "justin", "ed", "tom", "tyler"];

colors.push("pink");
names.push("fred");


console.log(colors)
console.log(names)



// var blue = colors[0]
// console.log(coloredHorses.colors[0] = names[0])
// console.log(coloredHorses.colors = "names");
// 

// for (var i = 0; i < colors.count; i++) {
//   console.log(number[i]);
// }


for(var i=0; i<names.length; i++){
    var coloredHorses = {};
    for(var j=0; j<names.length; j++){
         coloredHorses[names[j]] = colors[j];  
      }

}
console.log(coloredHorses);



////////////////////////////////////////

function Car(make, model, year, topSpeed) {
  // In this context, 'this' refers to 
  // the individual dog we're making
  console.log("Drive our car!!!!", this)
  
  
    // Therefore, this.name is sort of the Ruby
  // equivalent of @name
  this.make = make;
  this.model = model;
  this.year = year;
  this.topSpeed = topSpeed;
  
  this.honk = function() { console.log("Beep!"); };
  this.crash = function() { console.log("Screech!!  *Bang!!*");};
} 
  
  
var honda = new Car("honda", "accord", 2015, 120)
console.log(honda)


honda.honk();
  
//     // As for behavior, a function is a perfectly 
//   // valid property value ... whoa!
//   this.bark = function() { console.log("Woof!"); };
  
//   console.log("DOG INITIALIZATION COMPLETE");

var truck = new Car("toyota", "pickup", 1993, 108)
console.log(truck.make)
console.log(truck.model)
truck.honk();
truck.crash();
  