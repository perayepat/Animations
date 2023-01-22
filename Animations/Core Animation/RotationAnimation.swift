import SwiftUI

struct RotationAnimation: View {
    
    @State var rotation = 0.0
    @State var scaleXY = 1.0
    
    //inital postition
    @State var postionX = -150
    
    var body: some View {
        Rectangle()
            .fill(.cyan)
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
            }
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
