//
//  BackgroundView.swift
//  SwiftUI
//
//  Created by Tamim Hossain on 1/9/24.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool

    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue,
                                isNight ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    @State var isNight = true
    return BackgroundView(isNight: $isNight)
}
