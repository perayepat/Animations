import SwiftUI

struct RotationAnimation: View {
    
    // Initial Animation States
    @State var rotation = 0.0
    @State var scaleXY = 1.0
    @State var postionX = -150
    @State var objectColor = Color.blue
    // + Transperency
    @State var transperency = 0.1
    // + Corner radius
    @State var roundCorner = 25.0
    

    var body: some View {
        RoundedRectangle(cornerRadius: roundCorner)
            .fill(objectColor)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(rotation))
            .scaleEffect(scaleXY)
            .opacity(transperency)
            .blur(radius: scaleXY)
            .offset(x: CGFloat(postionX))
            .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true).speed(4), value: rotation)
            .onAppear {
                rotation += 360
                scaleXY += 1.1
                postionX += 250
                objectColor = Color.pink
                transperency = 1
                roundCorner = 0
            }
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
