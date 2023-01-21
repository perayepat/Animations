//
//  AnimatingAlignment.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct AnimatingAlignment: View {
    @State private var moveDashes = 100
    @State private var moveRight = false
    
    let chainGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        VStack {
            

            Spacer()
            
            VStack() {
                Image(systemName: "gift.fill")
                    .font(.largeTitle)

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
                            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false).speed(0.5),value: moveDashes))
                }
            } // All views
            .padding()
            Spacer()
            
        }
    }
}

struct AnimatingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingAlignment()
    }
}
