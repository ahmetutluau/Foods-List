//
//  Foods.swift
//  Food List
//
//  Created by MAC on 21.07.2022.
//

import Foundation

class Foods {
    var foodId : Int?
    var foodName : String?
    var foodImage : String?
    var foodPrice : Double?
    
    init(foodId : Int , foodName : String , foodImage : String , foodPrice : Double) {
        self.foodId = foodId
        self.foodName = foodName
        self.foodImage = foodImage
        self.foodPrice = foodPrice
    }
}
