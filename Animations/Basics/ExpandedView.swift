//
//  ExpandedView.swift
//  Animations
//
//  Created by Pat on 2022/11/05.
//

import SwiftUI

struct ExpandedView: View {
    @State private var isVisualizing = false
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 44)
                .frame(width: 375, height: 202)
                .padding(.top,12)
                .overlay {
                    VStack{
                        HStack{
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.blue.gradient)
                                .frame(width: 68, height: 68)
                                .overlay {
                                    Text("LON3.")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            VStack(alignment: .leading) {
                                Text("The Goodness")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("Toby Mac")
                                    .foregroundColor(Color(.systemGray))
                            }
                            Spacer()
                            //MARK: - Visualiser
                            HStack(spacing: 1){
                                ForEach(0 ..< 6) { item in
                                    RoundedRectangle(cornerRadius: 2)
                                        .frame(width: 3, height: .random(in: isVisualizing ? 8...16 : 4...12))
                                        .foregroundColor(.white)
                                }
                                .animation(.easeInOut(duration: 0.25).repeatForever(), value: isVisualizing)
                                .onAppear {
                                    isVisualizing.toggle()
                                }

                            }
                        }.padding(EdgeInsets(top: 32, leading: 24, bottom: 0, trailing: 24))
                        
                      musicPlayerControls
                    }
                    
                }
                
            Spacer()
        }

        
        
    }
        
}

extension ExpandedView{
    var musicPlayerControls: some View{
        VStack{
            RoundedRectangle(cornerRadius: 44)
                .frame(height: 7)
                .foregroundColor(Color(.systemGray))
                .padding(.horizontal,6)
            HStack{
                Image(systemName: "backward.fill")
                    .foregroundColor(Color(.systemGray))
                    .imageScale(.large)
                    .padding()
                Image(systemName: "pause.fill")
                    .foregroundColor(Color(.systemGray))
                    .imageScale(.large)
                Image(systemName: "forward.fill")
                    .foregroundColor(Color(.systemGray))
                    .imageScale(.large)
                    .padding()
                Spacer()
                Image(systemName: "headphones")
                    .foregroundColor(Color(.systemGray))
                    .imageScale(.large)
                    .padding()
         
            }
        }
        .padding()
    }
}

struct ExpandedView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandedView()
    }
}
