//
//  MenuListView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import SwiftUI

struct DrinkListView: View {
 @State   var drink : Drink
    var body: some View {
        ZStack{
            
            VStack (alignment: .center)    {
                
                Image(drink.assetName)
                    .resizable()
                    .padding(.bottom)
                    .scaledToFill()
                    .frame(width: 176, height: 128)
                    .background(.accentCOBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .padding(10)
                
                Text (drink.name)
                    .foregroundColor(.black)
                    .foregroundStyle(.black)
                    .font(.custom("calibri-regular", size: 18))
                    .padding(.top, 10)
                    .padding(.bottom, 25)
            }
            .background(RoundedRectangle(cornerRadius: 16))
            .foregroundStyle(.white)
            .shadow(radius: 8, y:9)
            .backgroundStyle(.accentCOBlue)
        }
    }
}

#Preview {
    DrinkListView(
        drink: Drink(name: "" , assetName:"")
    )
}
