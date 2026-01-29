//
//  FoodTypes.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/16/25.
//

import Foundation

enum FoodType : String, CaseIterable, Hashable {
    case Bread
    case Fruit
    case Sweet
    case Sandwich
    
    var FoodBasePrice: Double {
        switch self {
        case .Bread:
            return 1.99
        case .Fruit:
            return 1.99
        case .Sweet:
            return 2.99
        case .Sandwich:
            return 2.99
        }
    }
}

enum ToastLevel: String, CaseIterable, Hashable{
    case None
    case Light
    case Normal
    case Extra
}

enum CreamCheese: String, CaseIterable, Hashable {
    case None
    case Plain
    case GarlicOnion
    case MixedBerry
}



