//
//  DanglingLight.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct DanglingLight: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 80,height: 200)
                .foregroundColor(.black)
                
            VStack {
                Text("Hello, World!")
                    .foregroundColor(.white)
//                    .blendMode(.exclusion)
            }
            .clipShape(Circle().size(width: 100,height: 100).offset(x:30))
            
        }
        .ignoresSafeArea()
        .blendMode(.difference)
    }

}

struct DanglingLight_Previews: PreviewProvider {
    static var previews: some View {
        DanglingLight()
    }
}
