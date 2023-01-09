//
//  FoodViewModel.swift
//  FetchFoodDataFromAPI
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

class FoodViewModel: ObservableObject {
    @Published var foodArray: [Meal] = []
    var networkManager = NetworkManager()
    
    func getFoodData() {
        networkManager.getFoodData { meal in
            self.foodArray = meal
        }
    }
    
}
