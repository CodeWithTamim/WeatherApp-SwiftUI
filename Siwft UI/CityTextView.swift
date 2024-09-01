//
//  CityTextView.swift
//  Siwft UI
//
//  Created by Tamim Hossain on 1/9/24.
//

import SwiftUI

struct CityTextView : View {
    var cityName : String
    var body: some View {
        Text(cityName)
            .foregroundColor(.white)
            .font(.system(size: 32,weight: .medium,design: .default))
            .padding()
    }
}

#Preview {
    CityTextView(cityName:"Dhaka,Bangladesh")
}
