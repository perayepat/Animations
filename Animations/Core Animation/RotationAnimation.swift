import SwiftUI

struct RotationAnimation: View {
    
    // Initial Animation States
    @State var rotation = 0.0
    @State var scaleXY = 1.0
    @State var postionX = -150
    @State var objectColor = Color.blue
    
    var body: some View {
        Rectangle()
            .fill(objectColor)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(rotation))
            .scaleEffect(scaleXY)
            .blur(radius: scaleXY)
            .offset(x: CGFloat(postionX))
            .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true).speed(4), value: rotation)
            .onAppear {
                rotation += 360
                scaleXY += 1.1
                postionX += 250
                objectColor = Color.pink
            }
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
