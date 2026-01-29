//
//  FoodScrollView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/28/25.
//

import SwiftUI

struct FoodScrollView: View {
    
    @State   var foods: [Food] = [
        Food(name: "Croissant", assetName: "croissant", foodType: .Sweet),
        Food(name: "Avocado Toast", assetName: "avocado toast", foodType: .Bread),
        Food(name: "Egg Sandwich", assetName: "egg sandwich", foodType: .Sandwich),
        Food(name: "Acai Bowl", assetName: "acai bowl", foodType: .Fruit)
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: . leading){
                Text("Breakfast")
                    .foregroundStyle(.accentCOBlue)
                    .font(.custom("Frutiger Black", size: 23))
                
//                ScrollView (.horizontal) {
//                    HStack {
//                        ForEach(foods, id: \.self) { food in
//                            NavigationLink  {
//                                if food.foodType == .Bread {
//                                    BreadCustomizationView(food : food)
//                                } else {
//                                    FoodCustomizeView(food: food)
//                                }
//                            } label:  {
//                                FoodListView(food: food)
//                            }
//                            
//                            
//                        }
//                    }
//                }
            }
        }
    }
}

#Preview {
    FoodScrollView()
}
