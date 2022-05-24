//
//  DetailedView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI
struct DetailedView: View {
    //Properties
    var car: Car
    
    //Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                //MARK: - Header View For Car
                HeaderView(car: car)
                
                VStack(alignment: .leading, spacing: 15) {
                    //MARK: - Car Title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[0])
                    
                    //MARK: - Car Headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    //MARK: - Car Model
                    ModelView(car: car)
                    //MARK: - Descripation
                    Text("lear more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[0])
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //MARK: - Links
                    GroupBox() {
                        HStack {
                            Link("Source: Widipedia", destination: URL(string: "https:/wikipedia.com")!)
                            Spacer()
                            Image(systemName: "arrow.up.right.square" )
                        }//:HStack
                    }//: GroupBox
                    .padding(.bottom, 40)
                }//: VStack
                .padding(.horizontal, 15)
                .frame( maxWidth: 620)
            }//: VStack End Of mainScreen
        }//: Scroll View
        .ignoresSafeArea(.all)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(car: carsData[0])
    }
}

