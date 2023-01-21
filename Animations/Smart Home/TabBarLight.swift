//
//  TabBarLight.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct TabBarLight: View {
    @State var isLightOn: Bool = false
    @State var selectedTab: String = "Home"
    @State var openMenuOptions: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            SmartHomeView()
                .padding(.horizontal)
                .offset(y:-15)
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.white)
                .frame(height: 55)

            VStack {
                Spacer()
                HStack{
                    if openMenuOptions {
                        Image(systemName: "flashlight.on.fill")
                            .rotationEffect(.degrees(isLightOn ? 90 : 0))
                            .font(.system(size: 30))
                            .onTapGesture {
                                withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)){
                                    isLightOn.toggle()
                                }
                            }
                    }else{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: openMenuOptions ? 340 : 80, height: openMenuOptions ? 20 : 50)
                            .overlay(content: {
                                Text(selectedTab)
                                    .foregroundColor(.white)
                            })
                        
                            .padding(.leading)
                            .offset(x:20)
                            .onTapGesture {
                                withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)){
                                    openMenuOptions.toggle()
                                    isLightOn.toggle()
                                }
                            }
                    }
                    
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 340,height: 20)
                        .scaleEffect(isLightOn ? 1 : 0,anchor: isLightOn ? .trailing : .leading)
                        .opacity(isLightOn ? 1 : 0 )
                        .overlay{
                            HStack(spacing:isLightOn ? 50 : -50 ){
                                Button {
                                    withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)){
                                        openMenuOptions.toggle()
                                        isLightOn.toggle()
                                        selectedTab = "Home"
                                    }
                                } label: {
                                    Text("Home")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                }
                                .accentColor(.none)
                                
                                Button {
                                    withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)){
                                        openMenuOptions.toggle()
                                        isLightOn.toggle()
                                        selectedTab = "Devices"
                                    }
                                } label: {
                                    Text("Devices")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                    
                                }
                                .accentColor(.none)
                                
                                Button {
                                    withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)){
                                        openMenuOptions.toggle()
                                        isLightOn.toggle()
                                        selectedTab = "Profile"
                                    }
                               
                                } label: {
                                    
                                    Text("Profile")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                }
                                .accentColor(.none)

                            }
                            .offset(x:isLightOn||openMenuOptions ? 0 : -500 )
                            .opacity(isLightOn ? 1 : 0)
                        }
//                        .rotationEffect(.degrees(isLightOn ? 0 : -90),anchor: .leading)
                }
            }
        }
        .transition(.slide)
    }
}

struct TabBarLight_Previews: PreviewProvider {
    static var previews: some View {
        TabBarLight()
    }
}
