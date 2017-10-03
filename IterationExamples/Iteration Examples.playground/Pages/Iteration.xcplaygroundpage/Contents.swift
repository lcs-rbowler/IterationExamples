
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 400)


for i in stride(from: 0, through: 500, by: 50) {
    i
    canvas.drawShapesWithBorders = false
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: i, width: 300, height: 400)
    canvas.fillColor = Color(hue: 120, saturation: 100, brightness: i/5, alpha: 100)
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
