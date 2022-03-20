import UIKit

import UIKit

// all angles need to be converted to radians
func Degrees2Radians(degrees: Double) -> CGFloat{
    
    return CGFloat( degrees * M_PI / 180)
}

// set width and height that will be used by the view and layers
let width = 600
let height =  400

// values that will be used to draw the arc
var lineWidth = width / 4
var radius = width / 2

// tweak values if height is less than width
if(width >= height){
    
    lineWidth = height / 4
    radius = height / 2
}

// make the arc fit and look pretty
radius -= lineWidth / 2

let bounds = CGRect(x: 0, y: 0, width: width, height: height)
let view = UIView(frame: bounds)

// provide a shape layer and set its path to the arc
let shapeLayer = CAShapeLayer()
shapeLayer.frame = bounds // need this for the rotation transform to work correctly
view.layer.addSublayer(shapeLayer)

// define a start and end angle for the test arc
var startAngle =  Degrees2Radians(degrees: 0)
var endAngle = Degrees2Radians(degrees: 180)

// create the arc
shapeLayer.path = UIBezierPath(arcCenter: CGPoint(x: width / 2, y: height / 2), radius: CGFloat(radius), startAngle: startAngle, endAngle: endAngle, clockwise: true).cgPath

// give the layer some properties
shapeLayer.backgroundColor = UIColor.yellow.cgColor
shapeLayer.fillColor = UIColor.clear.cgColor
shapeLayer.strokeColor = UIColor.red.cgColor
shapeLayer.lineWidth = CGFloat(lineWidth)

// first rotation angle
var rotationAngle = Degrees2Radians(degrees: -90)

// apply the rotation
shapeLayer.transform = CATransform3DRotate(shapeLayer.transform, rotationAngle, 0.0, 0.0, 1.0)

// second rotation angle
rotationAngle = Degrees2Radians(degrees: 45)

// apply - this transformation is cumulative
shapeLayer.transform = CATransform3DRotate(shapeLayer.transform, rotationAngle, 0.0, 0.0, 1.0)

// Test using a different angle to see if if the donut redraws completely
endAngle = Degrees2Radians(degrees: 135)

shapeLayer.path = UIBezierPath(arcCenter: CGPoint(x: width / 2, y: height / 2), radius: CGFloat(radius), startAngle: startAngle, endAngle: endAngle, clockwise: true).cgPath

// this gives us a handy way to see the final results
view.backgroundColor = UIColor.lightGray
