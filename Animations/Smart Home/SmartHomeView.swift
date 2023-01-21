//
//  SmartHomeView.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct SmartHomeView: View {
    @State var isDeviceOn: [Bool] = [false,false,false,false]
    let columns = [
        GridItem(.fixed(180)),
        GridItem(.fixed(200)),
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading,spacing: 30){
                HStack{
                    VStack{
                        Circle()
                            .frame(width: 10, height: 10)
                        Circle()
                            .frame(width: 10, height: 10)
                        
                    }
                    VStack{
                        Circle()
                            .frame(width: 10, height: 10)
                        Circle()
                            .frame(width: 10, height: 10)
                        
                    }
                    Spacer()
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .clipShape(Circle())
                }
                .padding(.horizontal,30)
                HStack {
                    VStack(alignment: .leading){
                        Text("Welcome Home")
                            .font(.title2)
                            .fontWeight(.light)
                        Text("Coel Nil")
                            .bold()
                    }
                    Spacer()
                    Image(systemName: "house.fill")
                        .font(.system(size: 50))
                }
                .padding(.horizontal,30)
                Spacer()
                    .frame(height: 60)
                Text("Smart Devices")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal,30)

                LazyVGrid(columns: columns, spacing: 20) {
                    smartDeviceCards(image: "fan.and.light.ceiling",
                                     device:  "Fan",
                                     deviceState: $isDeviceOn[0],
                                     deviceSwitch:isDeviceOn[0])
                    smartDeviceCards(image: "lamp.desk.fill",
                                     device:  "Desk Lamp",
                                     deviceState: $isDeviceOn[1],
                                     deviceSwitch:isDeviceOn[1])
                    smartDeviceCards(image: "oven.fill",
                                     device:  "Oven",
                                     deviceState: $isDeviceOn[2],
                                     deviceSwitch:isDeviceOn[2])
                    smartDeviceCards(image: "door.garage.double.bay.closed",
                                     device:  "Garage",
                                     deviceState: $isDeviceOn[3],
                                     deviceSwitch:isDeviceOn[3])

                }
                .padding(.horizontal)

            }
            
        }
    }
}

struct SmartHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SmartHomeView()
    }
}


//MARK: - View Builders
extension SmartHomeView{
    @ViewBuilder
    func smartDeviceCards(image:String, device:String, deviceState:Binding<Bool>, deviceSwitch : Bool) -> some View{
        VStack{
            HStack{
                Image(systemName: image)
                    .font(.system(size: 40))
                Spacer()
            }
            .padding([.leading,.top])
            Spacer()
            HStack{
                VStack(alignment: .leading,spacing: 8){
                    Text("Smart")
                    Text(device)
                }
                .bold()
                Spacer()
                Toggle(isOn: deviceState) {
                }
                .rotationEffect(.degrees(-90))
                .tint(.black.opacity(0.1))
                .frame(width: 50, height: 50)
                .offset(y:9)
                
            }
            .padding([.leading,.trailing,.bottom])
        }
        .foregroundColor(deviceSwitch ?  .black : .white)
        .frame(width: 150, height: 180)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(deviceSwitch ? .gray.opacity(0.2) : .black)
                .offset(y: deviceSwitch ? -400 : 0)
                .opacity(deviceSwitch ? 0 : 1)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        )
        .animation(.easeInOut, value: deviceSwitch)
        
    }
}
