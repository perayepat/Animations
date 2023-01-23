import SwiftUI
import UIKit

struct AnimatingStroke: View {
    let pathBounds  = UIBezierPath.calculateBounds(paths: [.hike])
    var body: some View {
        Path { shape in
            shape.move(to: CGPoint(x: 122.5, y: 379))
            shape.addLine(to: CGPoint(x: 166.32, y: 476.96))
            shape.addCurve(to: CGPoint(x: 167.9, y: 509.66), control1: CGPoint(x: 170.94, y: 487.27), control2: CGPoint(x: 171.5, y: 498.95))
            shape.addLine(to: CGPoint(x: 156.2, y: 544.51))
            shape.addCurve(to: CGPoint(x: 141.73, y: 565.26), control1: CGPoint(x: 153.46, y: 552.67), control2: CGPoint(x: 148.44, y: 559.87))
            shape.addLine(to: CGPoint(x: 46.6, y: 641.7))
            shape.addCurve(to: CGPoint(x: 39.27, y: 649.15), control1: CGPoint(x: 43.88, y: 643.89), control2: CGPoint(x: 41.42, y: 646.39))
            shape.addLine(to: CGPoint(x: 32.97, y: 657.25))
            shape.addCurve(to: CGPoint(x: 26.3, y: 669.94), control1: CGPoint(x: 30.01, y: 661.05), control2: CGPoint(x: 27.75, y: 665.35))
            shape.addLine(to: CGPoint(x: 0, y: 669.94))
            shape.addCurve(to: CGPoint(x: 37.34, y: 712.08), control1: CGPoint(x: 21.53, y: 684.94), control2: CGPoint(x: 25.83, y: 701.34))
            shape.addLine(to: CGPoint(x: 65, y: 737.9))
            shape.addCurve(to: CGPoint(x: 112.62, y: 746.7), control1: CGPoint(x: 77.81, y: 749.85), control2: CGPoint(x: 96.39, y: 753.29))
            shape.addLine(to: CGPoint(x: 162.87, y: 726.31))
            shape.addCurve(to: CGPoint(x: 180.77, y: 713.12), control1: CGPoint(x: 169.85, y: 723.48), control2: CGPoint(x: 176, y: 718.95))
            shape.addLine(to: CGPoint(x: 282, y: 589.5))
            shape.addLine(to: CGPoint(x: 324.17, y: 544.15))
            shape.addCurve(to: CGPoint(x: 333.95, y: 536.23), control1: CGPoint(x: 327.04, y: 541.07), control2: CGPoint(x: 330.33, y: 538.4))
            shape.addLine(to: CGPoint(x: 411.57, y: 489.57))
            shape.addCurve(to: CGPoint(x: 445.54, y: 484.46), control1: CGPoint(x: 421.77, y: 483.44), control2: CGPoint(x: 433.99, y: 481.6))
            shape.addLine(to: CGPoint(x: 494.15, y: 496.46))
            shape.addCurve(to: CGPoint(x: 520.18, y: 514.28), control1: CGPoint(x: 504.69, y: 499.07), control2: CGPoint(x: 513.94, y: 505.39))
            shape.addLine(to: CGPoint(x: 574.48, y: 591.57))
            shape.addCurve(to: CGPoint(x: 585.43, y: 602.52), control1: CGPoint(x: 577.47, y: 595.82), control2: CGPoint(x: 581.18, y: 599.53))
            shape.addLine(to: CGPoint(x: 620.02, y: 626.82))
            shape.addCurve(to: CGPoint(x: 649.83, y: 628.15), control1: CGPoint(x: 628.85, y: 633.03), control2: CGPoint(x: 640.48, y: 633.54))
            shape.addLine(to: CGPoint(x: 0, y: 628.15))
            shape.addCurve(to: CGPoint(x: 660.72, y: 616.6), control1: CGPoint(x: 654.51, y: 625.44), control2: CGPoint(x: 658.29, y: 621.43))
            shape.addLine(to: CGPoint(x: 699.5, y: 539.5))
            shape.addLine(to: CGPoint(x: 742.7, y: 424.61))
            shape.addCurve(to: CGPoint(x: 743.74, y: 396.04), control1: CGPoint(x: 746.14, y: 415.45), control2: CGPoint(x: 746.5, y: 405.43))
            shape.addLine(to: CGPoint(x: 703.45, y: 259.39))
            shape.addCurve(to: CGPoint(x: 688.67, y: 237.2), control1: CGPoint(x: 700.88, y: 250.67), control2: CGPoint(x: 695.72, y: 242.93))
            shape.addLine(to: CGPoint(x: 609.68, y: 172.99))
            shape.addCurve(to: CGPoint(x: 603.03, y: 166.31), control1: CGPoint(x: 607.23, y: 171), control2: CGPoint(x: 605, y: 168.76))
            shape.addLine(to: CGPoint(x: 519.02, y: 62.08))
            shape.addCurve(to: CGPoint(x: 497.55, y: 47.41), control1: CGPoint(x: 513.47, y: 55.18), control2: CGPoint(x: 505.99, y: 50.08))
            shape.addLine(to: CGPoint(x: 434.33, y: 27.43))
            shape.addCurve(to: CGPoint(x: 385.27, y: 42.68), control1: CGPoint(x: 416.4, y: 21.76), control2: CGPoint(x: 396.83, y: 27.84))
            shape.addLine(to: CGPoint(x: 340.9, y: 99.64))
            shape.addCurve(to: CGPoint(x: 333.15, y: 107.41), control1: CGPoint(x: 338.64, y: 102.54), control2: CGPoint(x: 336.04, y: 105.15))
            shape.addLine(to: CGPoint(x: 252.66, y: 170.46))
            shape.addCurve(to: CGPoint(x: 243.71, y: 179.85), control1: CGPoint(x: 249.24, y: 173.14), control2: CGPoint(x: 246.22, y: 176.3))
            shape.addLine(to: CGPoint(x: 208.5, y: 229.5))
            shape.closeSubpath()
        }
        .stroke(lineWidth: 1)
        
    }
}

struct AnimatingStroke_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingStroke()
    }
}
