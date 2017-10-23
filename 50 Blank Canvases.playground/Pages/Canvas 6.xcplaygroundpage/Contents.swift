//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

// Create a starting point for travelling through Perlin noise space
var start = 0.0

//Create a Perlin noise generator
let p = PerlinGenerator()


for i in stride(from: 50, through: 600, by: 100){
    for y in stride(from: 50, through: 600, by: 100){
        
        // Size of circles
        for l in stride(from: 100, through: 20, by: -20){
            
            // Color generator

           
            //Move through Perlin noise space
            start += 5
            
            //Get Perlin noise (gives us a random number between -3 and 3)
            let randomValue = g.perlinNoise(x: start)
            
            //Convert to a range between 0 and 100
            let height = map(value: randomValue, fromLower: -3, fromUpper: 3, toLower: 1, toUpper: 361)
            
            // Make the height an integer
            let g = Int(height)
            
            let s = random(from: 50, toButNotIncluding: 101)
            
            
            //Brightness
            //Move through Perlin noise space
            start += 5
            
            //Get Perlin noise (gives us a random number between -3 and 3)
            let randomValue = p.perlinNoise(x: start)
            
            //Convert to a range between 0 and 100
            let height = map(value: randomValue, fromLower: -3, fromUpper: 3, toLower: 50, toUpper: 100)
            
            // Make the height an integer
            let toY = Int(height)
            
            
            
            // Color
            canvas.fillColor = Color.init(hue: g, saturation: s, brightness: toY, alpha: 100)
            // Drawing the circle
            canvas.drawEllipse(centreX: i, centreY: y, width: l, height: l)
            
            
        }
    }
}

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

