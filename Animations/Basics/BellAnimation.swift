//
//  BellAnimation.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct BellAnimation: View {
    @State var rotateBell = false
    
    var body: some View {
        VStack {
            Image(systemName: "bell.fill")
                .font(.system(size: 100))
                .rotationEffect(.degrees(rotateBell ? -45 : 45),anchor: .top)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(0.2), value: rotateBell)
                .onAppear(){
                    rotateBell.toggle()
                }
        }
        .padding()
    }
}

struct BellAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BellAnimation()
    }
}
