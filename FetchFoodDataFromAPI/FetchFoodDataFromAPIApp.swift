//
//  FetchFoodDataFromAPIApp.swift
//  FetchFoodDataFromAPI
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import SwiftUI

@main
struct FetchFoodDataFromAPIApp: App {
    var body: some Scene {
        WindowGroup {
            FoodListView()
                .environmentObject(FoodViewModel())
                .environmentObject(FoodDetailsViewModel())
        }
    }
}
