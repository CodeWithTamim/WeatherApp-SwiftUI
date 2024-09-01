//
//  ContentView.swift
//  Siwft UI
//
//  Created by Tamim Hossain on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false;
    var body: some View {
        ZStack {
            BackgroundView(isNight:$isNight)
            VStack {
                CityTextView(cityName:"Dhaka,Bangladesh")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",temp:74)
                HStack(spacing:10){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temp: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temp: 72)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temp: 70)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temp: 71)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temp: 73)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                    print("Tapped")
                
                } label:{
                    Text("Change Day Time")
                }.foregroundColor(.black)
                    .frame(width: 200,height: 50)
                    .background(Color.white)
                    .font(.system(size: 20,weight: .bold,design: .default))
                    .cornerRadius(10)
                Spacer()
                
            }            
            
        }
            
    }
}

#Preview {
    ContentView()
}







