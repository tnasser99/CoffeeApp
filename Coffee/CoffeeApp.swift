//
//  CoffeeApp.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import SwiftUI

@main
struct CoffeeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(drink: Drink(name: "", assetName: ""))
        }
    }
}
