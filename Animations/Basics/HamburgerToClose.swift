//
//  HamburgerToClose.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct HamburgerToClose: View {
    @State private var isRotating  = false
    @State private var isHidden  = false
    
    var body: some View {
        VStack(spacing: 14){
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 64, height: 10)
                .rotationEffect(.degrees(isRotating ? 48 : 0),anchor: .leading)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 64, height: 10)
                .scaleEffect(isHidden ? 0 : 1,anchor: isHidden ? .trailing : .leading)
                .opacity(isHidden ? 0 : 1)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 64, height: 10)
                .rotationEffect(.degrees(isRotating ? -48 : 0),anchor: .leading)
        }
        .onTapGesture {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)){
                isRotating.toggle()
                isHidden.toggle()
            }
        }
    }
}

struct HamburgerToClose_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerToClose()
    }
}
