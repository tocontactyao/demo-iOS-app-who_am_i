//
//  ContentView.swift
//  who_am_i_app_demo
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/22.
//
// 這支程式主要想以SwiftUI簡單地 Demo iOS App 畫面佈局的方法，包括各種UI物件的優化。

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //調整背景色
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                
                VStack {
                    // 為 image 進行優化，包括尺寸調整、加上圓框等
                    Image("yao")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0,height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white,lineWidth: 2)
                        )
                    //為"Chiahong Yao"套上Custom字形
                    Text("Chiahong Yao")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("iOS Developer")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    //增加分隔線
                    Divider()
                    //利用 extracted view 方式來簡化並重複使用程式碼
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
