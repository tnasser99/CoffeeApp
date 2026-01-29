//
//  ContentView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import SwiftUI

struct ContentView: View {
    let drink : Drink
    @State var showingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing:10){
                VStack (spacing:10) {
                    ZStack{
                        Rectangle().fill(.accentCOBlue)
                            .frame(width:403, height: 147)
                            
                        Image(.coLogo)
                            .resizable()
                            .border(.accentCOBlue)
                            .frame(width: 274, height: 133)
                    }
                    FullMenuView()
                }
            }

            .sheet(isPresented: $showingSheet)
            {OrderConfirmationView(drink: drink)
                
            }
            .toolbar {
               
                ToolbarItemGroup(placement: .topBarLeading){
                   Text("Hello,")
                        .foregroundStyle(Color.white)
                    NavigationLink{
                        AccountView()
                    } label: {Text("Person")}
                    
                }
//                ToolbarItem(placement: .topBarTrailing){
//                    NavigationLink{
//                        CartView()
//                    } label: {
//                        Image(systemName: "cart")
//                    }
//                }
            }.toolbarBackground(Color.accentCOBlue, for:.navigationBar)
                .toolbarBackgroundVisibility(.visible, for: .navigationBar)
        }
    }
}
#Preview {
    ContentView(drink: Drink(name: "", assetName: ""))
}
//    @State  var drinks: [Drink] = [
//        Drink(name: "Coffee", assetName: "coffee"),
//        Drink(name: "Cappuccino", assetName: "cappuccino"),
//        Drink(name: "Latte", assetName: "latte"),
//        Drink(name: "Matcha Latte", assetName: "matcha latte")
//    ]
//    @State   var foods: [Food] = [
//        Food(name: "Croissant", assetName: "croissant", foodType: .Sweet),
//        Food(name: "Avocado Toast", assetName: "avocado toast", foodType: .Bread),
//        Food(name: "Egg Sandwich", assetName: "egg sandwich", foodType: .Sandwich),
//        Food(name: "Acai Bowl", assetName: "acai bowl", foodType: .Fruit)
//    ]
//                    Text("Menu")
//                        .foregroundStyle(.accentCOBlue)
//                        .font(.custom("Frutiger Black", size: 30))
//                    ScrollView (.vertical){
//                VStack (alignment: . leading){
//                    Text("Drinks")
//                        .foregroundStyle(.accentCOBlue)
//                        .font(.custom("Frutiger Black", size: 23))
//
//
//                ScrollView (.horizontal) {
//                    HStack  {
//                            ForEach(drinks, id:\.self) {
//                            drink in
//                                NavigationLink  {
//                                    DrinkCustomizationView(drink: drink)
//                                        }
//                                label: { DrinkListView(drink: drink)}
//                                    }
//                                }
//                            }
//                            Text("Breakfast")
//                                .foregroundStyle(.accentCOBlue)
//                                .font(.custom("Frutiger Black", size: 23))
//
//                            ScrollView (.horizontal) {
//                                HStack {
//                                    ForEach(foods, id:\.self) { food in
//
//                                        if food.foodType == .Bread {
//                                            NavigationLink  {
//                                                BreadCustomizationView(food : food)
//                                            } label:  {
//                                                FoodListView(food: food)
//                                            }
//                                        }
//                                        else {
//                                            NavigationLink  {
//                                                FoodCustomizeView(food : food)
//                                            } label: {
//                                                FoodListView(food : food)
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
