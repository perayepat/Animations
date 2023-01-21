import SwiftUI

struct ShimmerEffect: View {
    @State private var shimmer = false
    var body: some View {
        ZStack {
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 32)
                        .foregroundColor(Color(.systemGray))
                        .foregroundStyle(.ultraThickMaterial)
                        .blendMode(.plusLighter)
                    HStack{
                        Image(systemName: "power.circle.fill")
                            .font(.system(size: 54))
                        Text("**Slide to power off**")
                            .foregroundStyle(LinearGradient(colors: [.black,.white], startPoint: .leading, endPoint: shimmer ? .trailing : .leading))
                            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: shimmer)
                            .task {
                                //works like on appear
                                shimmer.toggle()
                            }
                        Spacer()
                    }
                }
                .frame(maxWidth: 250,maxHeight: 64)
            }
        }
    }
}

struct ShimmerEffect_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerEffect()
            .preferredColorScheme(.dark)
    }
}
