//
//  ContentView.swift
//  who_am_i_app_demo
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //rgba(22, 160, 133,1.0)
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                
                 
                VStack {
                    Image("yao")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0,height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white,lineWidth: 2)
                        )
                    Text("Chiahong Yao")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("iOS Developer")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    Divider()
                    InfoView(text: "+886 920 915 353", imageName: "phone.fill")
                    InfoView(text: "to..yao@gmail.com", imageName: "envelope.fill")
                        
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(text)
                }
            )
            .padding(.all)
    }
}
