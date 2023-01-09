//
//  FoodDetailsViewModel.swift
//  FetchFoodDataFromAPI
//
//  Created by Jonathan Ricky Sandjaja on 09/01/23.
//

import Foundation

class FoodDetailsViewModel: ObservableObject {
    @Published var foodDetailsArray: [FoodDetail] = []
    var networkManager = NetworkManager()
    
    func getFoodDetailsData(foodID: String) {
        networkManager.getFoodDetailsData(mealID: foodID) { detail in
            self.foodDetailsArray = detail
        }
    }
}
