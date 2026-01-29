//
//  OrderConfirmationView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import SwiftUI

struct OrderConfirmationView: View {
    
        let drink : Drink
//        let food :  Food?
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center){
                
                Text("Your order will be ready at 9:56 a.m.")
                    .padding()
                
                Text("Thank you, Customer Name, for choosing Capital One Cafe for your coffee fix.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Here are the details of your order:")
                
                Text("1x \(drink.size) \(drink.name)")
                Text ("\(drink.milk) milk")
                Text ("\(drink.syrup) syrup")
                Text ("\(drink.sugars) sugars")
                if case drink.ice = true {
                    Text("Iced")
                }
                if drink.specialRequests != nil {
                    Text("\n\(String(drink.specialRequests ?? ""))\n")
                        .multilineTextAlignment(.center)
                }
                
                Text("Order Total: $\(drink.calculatedPrice1(), specifier: "%2.f")")
                
//                HStack{
//                    ScrollView (.horizontal){
//                        if drink != nil {
//                            DrinkConfirmCardView(drink: drink)
//                        }
                         
//                        if food != nil {
//                            ConfirmationCardView(food: food)
//                        }
//                    }
//                }
            }
        }  .toolbar {
            
            ToolbarItem(placement: .principal) {
                Text("Order Confirmation")
            }
        }
    }
}

#Preview {
    OrderConfirmationView(drink:Drink(name:"", assetName: ""))
}
