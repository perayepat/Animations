//
//  CountUpTimer.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct CountUpTimer: View {
    @State var toggleRecordStop = "Record"
    @State var scaleBigger = 0.5
    @State var scaleMedium = 0.5
    @State var scaleSmaller = 0.5
    @State var counter = Text("0.00")
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Audio Metering")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            Spacer()
            
         //MARK: - Counter
            counter
                .font(.system(size: 64))
                .fontWeight(.ultraLight)
            
            Spacer()
            
            ZStack {
                
                Circle()
                    .frame(width: 250, height: 250, alignment: .center)
                    .scaleEffect(CGFloat(scaleBigger))
                    .foregroundColor(Color(.systemGray6))
                    .animation(Animation.easeOut(duration: 1).repeatForever(autoreverses: true),value: scaleBigger)
                
                Circle()
                    .frame(width: 200, height: 200, alignment: .center)
                    .scaleEffect(CGFloat(scaleMedium))
                    .foregroundColor(Color(.systemGray5))
                    .animation(Animation.default.repeatForever(autoreverses: true),value: scaleMedium)
                
                Circle()
                    .frame(width: 150, height: 150, alignment: .center)
                    .scaleEffect(CGFloat(scaleSmaller))
                    .foregroundColor(Color(.systemGray4))
                    .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true),value: scaleSmaller)
                
                // Red circle
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(Color(.systemRed))
                    .overlay(Text(toggleRecordStop))
                    
                    
            }
            .onTapGesture {
                toggleRecordStop = "Stop"
                scaleBigger = 1.2
                scaleMedium = 1.2
                scaleSmaller = 1.2
                ///Starting from 0.0.
                ///Using the timer to count up
                counter = Text(Date().addingTimeInterval(0.0), style: .timer)
                    .font(.system(size: 64))
                    .fontWeight(.ultraLight)
            }
        }
        .padding()
    }
}

struct CountUpTimer_Previews: PreviewProvider {
    static var previews: some View {
        CountUpTimer()
    }
}
