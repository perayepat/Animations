
import SwiftUI

struct AnimatingAlignment: View {
    @State private var moveDashes = 100
    @State private var moveRight = false
    let chainGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        
        VStack {
            Spacer()
            VStack(alignment: moveRight ? .trailing : .leading){
                Image(systemName: "gift.fill")
                    .font(.largeTitle)
                    .animation(.linear(duration: 4).delay(-0.5).repeatForever(autoreverses: true), value: moveRight)
                
                ZStack {
                    HStack {
                        
                        Circle()
                            .frame(width: 20, height: 20)
                        
                        Spacer()
                        
                        Circle()
                            .frame(width: 20, height: 20)
                    }.padding(.horizontal, 60)
                    
                    chainGradient
                        .frame(width: 340, height: 80, alignment: .center)
                        .mask(RoundedRectangle(cornerRadius: 40)
                            .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round, dash: [8, 14], dashPhase: CGFloat(moveDashes)))
                            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true).speed(0.5)))
                }
            }
            .padding()
            .onAppear {
                moveRight.toggle()
                moveDashes = -100
            }
        }
    }
}

struct AnimatingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingAlignment()
    }
}
