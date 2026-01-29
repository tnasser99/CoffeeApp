//
//  DrinkSize.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/16/25.
//

import Foundation

enum Size : String, CaseIterable {
    case Small
    case Medium
    case Large
    
    var DrinkBasePrice: Double {
        switch self {
        case .Small:
            return 3.99
        case .Medium:
            return 4.99
        case .Large:
            return 5.99
        }
    }
}
