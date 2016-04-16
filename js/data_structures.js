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