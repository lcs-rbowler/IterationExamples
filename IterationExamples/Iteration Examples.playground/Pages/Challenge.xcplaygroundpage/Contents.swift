//: [Previous](@previous) / [Next](@next)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 600, height: 600)

canvas.drawShapesWithBorders = false

// Background
for i in stride(from: 0, to: 600, by: 1) {
    i
    canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 1, height: 600)
    canvas.fillColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
}

// Circles
for x in stride(from: 50, through: 550, by: 100) {
    for y in stride(from: 550, through: 50, by: -100) {
        for z in stride(from: 100, through: 20, by: -2) {
            // Values
            let randomColor = random(from: 0, toButNotIncluding: 361)
            let randomBrightness = random(from: 60, toButNotIncluding: 101)
            // Shapes
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
            // Colour Change
            canvas.fillColor = Color.init(hue: randomColor, saturation: randomBrightness, brightness: randomBrightness, alpha: randomBrightness)
            
        }
    }
}

PlaygroundPage.current.liveView = canvas.imageView
