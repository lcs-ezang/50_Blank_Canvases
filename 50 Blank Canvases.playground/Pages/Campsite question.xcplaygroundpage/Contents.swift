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
let canvas = Canvas(width: 200, height: 200)

//Point structure
struct Point {
    var x : Double
    var y : Double
}
struct Line {
    var slop : Double
    var yInt : Double
}


func answer (firstPointOnLine: Point, secondPointOnLine: Point, thirdPointNotOnLine: Point) {

let point1 = Point(x: firstPointOnLine.x, y: firstPointOnLine.y)
let point2 = Point(x: secondPointOnLine.x, y: secondPointOnLine.y)
let point3 = Point(x: thirdPointNotOnLine.x, y: thirdPointNotOnLine.y)

//Finding rise
func rise(y1: Double, y2: Double) -> Double {
    return y1-y2
}

//Finding run
func run(x1: Double, x2: Double) -> Double {
    return x1 - x2
}

//Find slope
func slope (point1: Point, point2: Point) -> Double {
    
    return rise(y1: point1.y, y2: point2.y) / run(x1: point1.x, x2: point2.x)
    
}

//Find y-intercept of original line
let b1 = firstPointOnLine.y -  slope(point1: point1, point2: point2) * firstPointOnLine.x


//Store original line
let originalLine = Line(slop: slope(point1: point1, point2: point2), yInt: b1)


//Find negative reciprocal slope of new point
    let negativeReciprocalSlope = 1/slope(point1: point1, point2: point2) * -1


//y=mx+b    m=negativeReciprocalSlope     let b = y-mx
//Find y-intercept
let b2 = thirdPointNotOnLine.y - negativeReciprocalSlope * thirdPointNotOnLine.x


//Store perpendicular line
    let perpendicularLine = Line(slop: negativeReciprocalSlope, yInt: b2)


func slopeDifference (originalSlope: Double, perpendicularLine : Double) -> Double {
    return negativeReciprocalSlope - originalSlope
}
    
func yInterceptDifference (originalYInt: Double, perpendicularYInt : Double) -> Double {
    return originalYInt - perpendicularYInt
}


//slopeDifference(originalSlope: slope(point1: point1, point2: point2), perpendicularLine: negativeReciprocalSlope)
//
//yInterceptDifference(originalYInt: b1, perpendicularYInt: b2)


func xIntPOI (originalLine : Line, perpendicularLine : Line) -> Double {
    
    return yInterceptDifference(originalYInt: b1, perpendicularYInt: b2) / slopeDifference(originalSlope: slope(point1: point1, point2: point2), perpendicularLine: negativeReciprocalSlope)

}


func yIntPOI (xIntPOI : Double, subbedLine: Line) -> Double {
    return subbedLine.slop * xIntPOI + subbedLine.yInt

}

let POI = Point(x: xIntPOI(originalLine: originalLine, perpendicularLine: perpendicularLine), y: yIntPOI(xIntPOI: xIntPOI(originalLine: originalLine, perpendicularLine: perpendicularLine), subbedLine: perpendicularLine))

func distanceBetweenPoints (point3: Point, POI: Point) -> Double {
    return sqrt (pow(point3.x - POI.x, 2) + pow(point3.y - POI.y, 2))
}

distanceBetweenPoints(point3: Point(x: thirdPointNotOnLine.x, y: thirdPointNotOnLine.y), POI: Point(x: POI.x, y: POI.y))

 //Print the equation
if negativeReciprocalSlope != 0 {
    return print("y = \(negativeReciprocalSlope)x+\(b2)")
    }; if slope(point1: point1, point2: point2) == 0 {
        return print("x = \(thirdPointNotOnLine.x)")
    } else {
    return print("y = \(thirdPointNotOnLine.y)")
}

return print("Point of intersection = \(POI)")

return print("Distance between point and POI = \(distanceBetweenPoints(point3: Point(x: thirdPointNotOnLine.x, y: thirdPointNotOnLine.y), POI: Point(x: POI.x, y: POI.y)))")

}


answer(firstPointOnLine: Point(x: 2.0, y: 8.5), secondPointOnLine: Point(x: 10.0, y: 4.5), thirdPointNotOnLine: Point(x: 6.0, y: 1.5))

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

