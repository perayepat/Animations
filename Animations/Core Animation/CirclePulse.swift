import SwiftUI

struct CirclePulse: View {
    
    @State private var animatingSmallCircle = false
    @State private var animatingLargeCircle = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke()
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.width - 50, alignment: .center)
                .scaleEffect(animatingLargeCircle ? 1.2 : 0.73)
                .opacity(animatingLargeCircle ? 0 : 1)
                .animation(.easeInOut(duration: 4).delay(1).repeatForever(autoreverses: false), value: animatingLargeCircle)
                .onAppear {
                    animatingLargeCircle.toggle()
                }
            
            Circle()
                .stroke()
                .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.width - 100, alignment: .center)
                .scaleEffect(animatingSmallCircle ? 1.2 : 0.84)
                .opacity(animatingSmallCircle ? 0 : 1)
                .animation(.easeInOut(duration: 4).delay(1).repeatForever(autoreverses: false), value: animatingSmallCircle)
                .onAppear {
                    animatingSmallCircle.toggle()
                }
            
            Circle()
                .stroke(lineWidth: 4)
                .frame(width: UIScreen.main.bounds.width - 150, height: UIScreen.main.bounds.width - 150, alignment: .center)
                .opacity(0.2)
        }
    }
}

struct CirclePulse_Previews: PreviewProvider {
    static var previews: some View {
        CirclePulse()
    }
}
