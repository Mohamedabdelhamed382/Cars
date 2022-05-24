//
//  CarListView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI
struct CarListView: View {
    //Properties
    @State var isSettingViewPresented: Bool = false
    
    //Body
    var body: some View {
        NavigationView {
            List {
                ForEach (carsData) { item in
                    NavigationLink(destination: DetailedView(car: item)){
                        CellView(car: item)
                            .padding(.vertical, 4)
                    }//:NavigationLink
                }//:ForEach
            }//: List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing:
            Button(action: {
                isSettingViewPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isSettingViewPresented) {
                SettingView()
            }
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView()
    }
}
