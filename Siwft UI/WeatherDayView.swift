//
//  WeatherDayView.swift
//  Siwft UI
//
//  Created by Tamim Hossain on 1/9/24.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var temp:Int
    var body: some View {
        VStack(spacing:5) {
            Text(dayOfWeek)
                .font(.system(size: 18,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35,height: 35)
            
            
            Text("\(temp)°")
                .font(.system(size: 18,weight: .medium,design: .default))
                .foregroundColor(.white)
            
            
        }.padding(15)
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temp: 76)
}
