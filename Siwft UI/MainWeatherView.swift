//
//  MainWeatherView.swift
//  Siwft UI
//
//  Created by Tamim Hossain on 1/9/24.
//

import SwiftUI

struct MainWeatherView : View {
    var imageName : String
    var temp :Int
    var body: some View {
        VStack(spacing:8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180,height: 180)
            Text("\(temp)°")
                .foregroundColor(.white)
                .font(.system(size: 70,weight: .medium,design: .default))
                .padding()
            
        }.padding(.bottom,50)
    }
}

#Preview {
    MainWeatherView(imageName:"cloud.sun.fill",temp:74)
}
