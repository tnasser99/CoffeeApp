//
//  FullMenuView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/26/25.
//

import SwiftUI

struct FullMenuView: View {
    @State var showingSheet = false
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
    
    var body: some View {
        NavigationStack{
            VStack(){
                
                ScrollView (.vertical){
                    
                    Text("Menu")
                        .foregroundStyle(.accentCOBlue)
                        .font(.custom("Frutiger Black", size: 30))
                    DrinkScrollView()
                    
//                    FoodScrollView()

                        
                        
                                    .sheet(isPresented: $showingSheet)
                                    {AccountView()
                    }
                }
            }
        }
    }
}
#Preview {
    FullMenuView()
}
