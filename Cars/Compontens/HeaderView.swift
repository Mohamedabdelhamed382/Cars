//
//  HeaderView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI

struct HeaderView : View {
    //Properties
    var car: Car
    @State var isAnimating: Bool = false
     
    //Body
    var body: some View {
        ZStack {
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6 )
                .animation(.linear(duration: 0.3), value: isAnimating)
        }//ZStack
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(
            gradient:
                Gradient(colors: car.gradientColors),
            startPoint: .topLeading,
            endPoint: .bottomTrailing))
        .onAppear {
            isAnimating = true
        }
    }
}

