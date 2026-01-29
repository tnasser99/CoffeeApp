//
//  DrinkScrollView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/28/25.
//

import SwiftUI

struct DrinkScrollView: View {
    
    @State  var drinks: [Drink] = [
        Drink(name: "Coffee", assetName: "coffee"),
        Drink(name: "Cappuccino", assetName: "cappuccino"),
        Drink(name: "Latte", assetName: "latte"),
        Drink(name: "Matcha Latte", assetName: "matcha latte")
    ]
    
    var body: some View {
        NavigationStack{
         
                    VStack (alignment: . leading){
                        Text("Drinks")
                            .foregroundStyle(.accentCOBlue)
                            .font(.custom("Frutiger Black", size: 23))
                        
                        
                        ScrollView (.horizontal) {
                            HStack  {
                                ForEach(drinks, id:\.self) {
                                    drink in
                                    NavigationLink  {
                                        DrinkCustomizationView(drink: drink)
                                    }
                                    label: { DrinkListView(drink: drink)}
                                }
                            }
                        }
                    }
                }
            }
        }
    

#Preview {
    DrinkScrollView()
}
