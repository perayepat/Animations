
import SwiftUI

struct SunAndMoon: View {
    @State private var moveAlongPath = 20
    @State private var scaleX = 0.0
    
    var body: some View {
        
        ZStack{
            Color.blue.hueRotation(Angle.degrees(20))
                .ignoresSafeArea()
            
            VStack(spacing: 400) {
                Text("Sun & Moon")
                    .font(.largeTitle)
                HStack{
                    Text("4:00AM")
                        .font(.caption)
                    
                    Spacer()
                    
                    Text("10:00PM")
                        .font(.caption)
                }
                Spacer()
            }.padding()
            
            ZStack{
                Circle()
                    .trim(from:1/2, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [7,7]))
                    .frame(width: 300, height: 300)
                
                Image(systemName: "sun.max")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .offset(x: -150)
                    .rotationEffect(.degrees(Double(moveAlongPath)))
                    .animation(Animation.easeInOut(duration: 5).delay(2).repeatForever(autoreverses: false), value: moveAlongPath)
                    .onAppear{
                        moveAlongPath = 145
                    }
                    
                ZStack{
                    Rectangle()
                        .frame(width: 400, height: 150)
                        .foregroundColor(.yellow)
                        .opacity(0.1)
                        .scaleEffect(x: CGFloat(scaleX), anchor: .leading)
                        .offset(y:-75)
                        .animation(Animation.easeInOut(duration: 5).delay(2).repeatForever(autoreverses: false), value: scaleX)
                        .onAppear{
                            scaleX = 0.8
                        }
                        
                }
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                
             Rectangle()
                    .frame(width: 300, height: 1)
                    .foregroundColor(.white)
                    .opacity(0.5)
                
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.yellow)
                    .offset(x: -150)
                
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.yellow)
                    .offset(x: 150)
            }
        }
    }
}

struct SunAndMoon_Previews: PreviewProvider {
    static var previews: some View {
        SunAndMoon()
    }
}
