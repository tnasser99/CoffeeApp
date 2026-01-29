//
//  Menu.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import Foundation

//protocol AllProducts : Hashable {
//    var name : String {get set}
//    var assetName: String {get set}
//}

struct Drink : /*AllProducts,*/ Hashable {
    var name : String
    var assetName : String
    var size : Size = .Small
    var milk : Milk = .Whole
    var syrup : Syrups = .None
    var sugars: Int = 0
    var ice : Bool = false
    var specialRequests: String?
    
    func calculatedPrice1() -> Double {
        var drinkPrice = size.DrinkBasePrice
        let taxRate = 0.08
        
        if syrup == .Chocolate {
            drinkPrice += 0.6 }
        if syrup == .Hazelnut {
            drinkPrice += 0.6 }
        if syrup == .Vanilla {
            drinkPrice += 0.6 }
        if milk == .None {
            drinkPrice += 0.0 }
        if milk == .Whole {
            drinkPrice += 0.2 }
        if milk == .Almond {
            drinkPrice += 0.3 }
        if milk == .Oat {
            drinkPrice += 0.5 }
    
        
        return drinkPrice + Double (sugars) + ((drinkPrice + Double (sugars)) * taxRate)
    }
    
    
}

struct Food : /*AllProducts,*/ Hashable {
    var name : String
    var assetName : String
    var foodType : FoodType = .Bread
    var toastLevel : ToastLevel = .None
    var creamCheese : CreamCheese = .None
    var seasoning: Bool = false
    var specialRequests : String?
    var number : Int = 1
    
    func calculatedPrice2() -> Double {
        var foodPrice = foodType.FoodBasePrice
        //        let taxRate = 0.08
        
        if creamCheese == .None {
            foodPrice += 0.6 }
        if creamCheese == .Plain {
            foodPrice += 0.6 }
        if creamCheese == .GarlicOnion {
            foodPrice += 0.6 }
        if creamCheese == .MixedBerry {
            foodPrice += 0.0 }
        if seasoning == true {
            foodPrice += 0.1 }
        
        return foodPrice * Double(number)
    }
}
    func calculatePrice(drinksPrice: Drink, foodsPrice : Food) -> Double {
        let finalDrinksPrice = drinksPrice.calculatedPrice1()
        let finalFoodsPrice = foodsPrice.calculatedPrice2()
        let taxRate = 0.08
        return (finalDrinksPrice + finalFoodsPrice) * taxRate
    }
//struct Cart : Hashable {
//    var food: Food?
//    var drink: Drink?
//}

//struct CartItem {
//    let product1 : Drink
//    let product2 : Food
//}
//
//class CartModel: ObservableObject{
//    
//    @Published var items: [CartItem]=[]
//    
//    func addProduct(_product1: Drink, quantity : Int = 1) {
//        if let index = items.firstIndex(where: {$0.product1.name == product1.name})
//
//        }
//        
//    }
//}




/*
 to research
 - Protocols
 */

//protocol Consumable {
//    var name: String { get set }
//    var assetName: String { get set }
//}
//
//struct Food: Consumable {
//    var name: String
//    var assetName: String
//    
//    var glutenFree: Bool
//}
//
//struct Drink: Consumable {
//    var name: String
//    var assetName: String
//    
//    var dairyFree: Bool
//}
