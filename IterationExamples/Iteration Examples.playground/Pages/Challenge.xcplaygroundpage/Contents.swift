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

//Bottom-Left Square
for i in stride(from: 0, through: 300, by: 5) {
    canvas.lineColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: i, fromY: 0, toX: 300, toY: i)
    canvas.drawLine(fromX: 300, fromY: i, toX: 300-i, toY: 300)
    canvas.drawLine(fromX: 300-i, fromY: 300, toX: 0, toY: 300-i)
    canvas.drawLine(fromX: 0, fromY: 300-i, toX: i, toY: 0)
}

//Top-Left Square
canvas.translate(byX: 0, byY: 300)

for k in stride(from: 0, through: 301, by: 1) {
    k
    canvas.drawShapesWithBorders = false
    canvas.drawRectangle(bottomLeftX: -1+k, bottomLeftY: 0, width: 1, height: 300)
    canvas.fillColor = Color(hue: k, saturation: 100, brightness: 100, alpha: 100)
}

//Top-Right Square
canvas.translate(byX: 300, byY: 0)

for n in stride(from: 0, through: 150, by: 5) {
    canvas.lineColor = Color.init(hue: n, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: 150+n, fromY: 5, toX: 300, toY: 5+n, lineWidth: 10)
    canvas.lineColor = Color.init(hue: 120-n, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: 300, fromY: 150+n, toX: 300-n, toY: 300, lineWidth: 10)
    canvas.lineColor = Color.init(hue: n, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: 155-n, fromY: 300, toX: 5, toY: 300-n, lineWidth: 10)
    canvas.lineColor = Color.init(hue: 120-n, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: 5, fromY: 155-n, toX: 5+n, toY: 5, lineWidth: 10)
}

//Bottom-Right Square
canvas.translate(byX: 0, byY: -300)

canvas.fillColor = Color.red
    canvas.drawLine(fromX: 50, fromY: 50, toX: 50, toY: 250, lineWidth: 5)
    canvas.drawLine(fromX: 50, fromY: 250, toX: 150, toY: 170, lineWidth: 5)
    canvas.drawLine(fromX: 150, fromY: 170, toX: 50, toY: 150, lineWidth: 5)
    canvas.drawLine(fromX: 50, fromY: 150, toX: 150, toY: 50, lineWidth: 5)
    canvas.drawLine(fromX: 150, fromY: 250, toX: 250, toY: 170, lineWidth: 5)
    canvas.drawLine(fromX: 250, fromY: 250, toX: 250, toY: 50, lineWidth: 5)


PlaygroundPage.current.liveView = canvas.imageView
