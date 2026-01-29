//
//  ConfirmationCardView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/27/25.
//

import SwiftUI

struct ConfirmationCardView: View {
    
    
    let food: Food
    
    var body: some View {
        ZStack{
            VStack (alignment: .center)    {
                Image("")
                    .resizable()
                    .padding(.bottom)
                    .scaledToFill()
                    .frame(width: 176, height: 128)
                    .background(.accentCOBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .padding(10)
                
//                Text ("\(.size.rawValue)\(food.name)")
                Text ("drink.syrup.rawValue)")
                
//                    .foregroundColor(.black)
//                    .foregroundStyle(.black)
//                    .font(.custom("calibri-regular", size: 18))
//                    .padding(.top, 10)
//                    .padding(.bottom, 25)
            }
            .background(RoundedRectangle(cornerRadius: 16))
            .foregroundStyle(.white)
            .shadow(radius: 8, y:9)
            .backgroundStyle(.accentCOBlue)
        }
    }
}

#Preview {
    ConfirmationCardView(food:Food(name:"", assetName:""))
}
