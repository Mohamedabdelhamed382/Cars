//
//  Car.swift
//  Cars
//
//  Created by MOHAMED ABD ELHAMED AHMED on 23/05/2022.
//

import SwiftUI

struct Car: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let models: [String]
}
