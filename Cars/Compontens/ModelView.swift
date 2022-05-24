//
//  ModelView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI

struct ModelView: View {
    //properties
    var car : Car
    
    //Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Car Model") {
                ForEach(0 ..< 7) { item in
                    Divider()
                    HStack {
                        Image(systemName: "Car")
                            .foregroundColor(car.gradientColors[0] )
                        Text("Model \(item + 1):")
                            .foregroundColor(car.gradientColors[0])
                            .fontWeight(.bold)
                        
                        Spacer()
                        Text(car.models[item])
                    }//HStack
                    .padding(.vertical,2)
                }
            }
            .foregroundColor(car.gradientColors[0])
        }//GroupBox
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(car: carsData[2])
    }
}
