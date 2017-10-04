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

// Below this line, try combining a loop and four statements that draw lines to generate the goal
//=====================================================================\\

for i in stride(from: 0, through: 300, by: 5) {
    canvas.lineColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: i, fromY: 0, toX: 300, toY: i)
    canvas.drawLine(fromX: 300, fromY: i, toX: 300-i, toY: 300)
    canvas.drawLine(fromX: 300-i, fromY: 300, toX: 0, toY: 300-i)
    canvas.drawLine(fromX: 0, fromY: 300-i, toX: i, toY: 0)
}

canvas.translate(byX: 0, byY: 300)

for k in stride(from: 0, through: 301, by: 1) {
    k
    canvas.drawShapesWithBorders = false
    canvas.drawRectangle(bottomLeftX: -1+k, bottomLeftY: 0, width: 1, height: 300)
    canvas.fillColor = Color(hue: k, saturation: 100, brightness: 100, alpha: 100)
}

canvas.translate(byX: 300, byY: 0)

for n in stride(from: 0, through: 300, by: 5) {
    canvas.drawLine(fromX: n, fromY: 0, toX: 300, toY: n, lineWidth: 10)
}

PlaygroundPage.current.liveView = canvas.imageView
