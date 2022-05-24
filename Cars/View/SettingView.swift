//
//  SettingView.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 24/05/2022.
//

import SwiftUI

struct SettingView: View {
    //Properties
    @AppStorage("isOnbording") var isOnbording: Bool = true
    @Environment(\.presentationMode) var presentationMode
    //Body
    var body: some View {
        NavigationView {
            VStack{
                //MARK: - Group Box
                GroupBox() {
                    HStack {
                        Text("Cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                        
                    }//: HStack First Cell
                    Divider()
                    HStack {
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                        Text("Car App includes very important information about the lucutry cars, it ahs detils about the history of differnt model  ")
                        
                    }//: HStack second Cell
                }//: Group Box
                //MARK: - Check Box
                if #available(iOS 15.0, *) {
                    Toggle(isOn: $isOnbording) {
                        if isOnbording {
                            Text("Restarted".uppercased())
                                .font(.title)
                                .foregroundColor(.green)
                        } else {
                            Text("Restart".uppercased())
                                .font(.title)
                                .foregroundColor(.gray)
                        }
                    }//Toggle View
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                } else {
                    // Fallback on earlier versions
                }
                Spacer()
            }//: VStack Main
            .navigationTitle("Settings")
            .navigationBarItems( trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
            
        }//: NavigationView
    }//: body
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
