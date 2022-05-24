//
//  ContentView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(carsData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
