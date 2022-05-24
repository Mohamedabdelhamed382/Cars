//
//  CarsApp.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI

@main
struct CarsApp: App {
    @AppStorage("isOnbording") var isOnbording: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnbording { OnboardingView() } else { CarListView() }
         }
    }
}
