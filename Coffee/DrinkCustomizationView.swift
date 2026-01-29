//
//  DrinkCustomizationView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/13/25.
//

import SwiftUI

struct DrinkCustomizationView: View {
    //    @State var food : Food
    @State var drink : Drink
    @State var specialRequest: String = ""
    @State var showingSheet = false
    
    var body: some View {
        NavigationStack{
            
            ScrollView (.vertical)  {
                VStack (alignment: .center) {
                    ZStack{
                        Rectangle().fill(.accentCOBlue)
                            .shadow(radius: 6)
                            .frame(width:402, height: 240)
                            .shadow(color: .black, radius: 10, x:0, y:0)
                        DrinkListView(drink:drink)
                    }
                    
                    .background(RoundedRectangle(cornerRadius: 16))
                    .foregroundStyle(.white)
                    .shadow(radius: 8)
                    .backgroundStyle(.accentCOBlue)
                }
                .padding()
                
                Text("Size")
                    .font(.custom("calibri-bold", size: 26))
                    .foregroundStyle(.accentCOBlue)
                
                Picker("Size", selection:$drink.size){
                    ForEach( Size.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                } .pickerStyle(.segmented)
                    .padding(.bottom, 24)
                    .padding(.horizontal, 40)
                
                
                Text("Milk")
                    .font(.custom("calibri-bold", size: 24))
                    .foregroundStyle(.accentCOBlue)
                Picker("Milk", selection:$drink.milk){
                    ForEach ( Milk.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                } .pickerStyle(.segmented)
                    .padding(.bottom, 24)
                    .padding(.horizontal, 40)
                
                Text("Syrup")
                    .font(.custom("calibri-bold", size: 24))
                    .foregroundStyle(.accentCOBlue)
                Picker("Syrup", selection:$drink.syrup){
                    ForEach ( Syrups.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                } .pickerStyle(.automatic)
                    .tint(.accentCOBlue)
                    .padding(.bottom, 24)
                
                Stepper ("Sugars: \(drink.sugars)", value: $drink.sugars, in:0...15)
                    .font(.custom("calibri-bold", size: 24))
                    .padding(.horizontal, 90)
                    .padding(.bottom)
                    .foregroundStyle(.accentCOBlue)
                
                Toggle("Ice", isOn: $drink.ice)
                    .font(.custom("calibri-bold", size: 24))
                    .padding(.horizontal, 120)
                    .padding(.bottom)
                    .tint(.accentCOBlue)
                    .foregroundStyle(.accentCOBlue)
                
                TextField("Special Requests", text: $specialRequest)
                    .padding(.leading, 150)
                    .padding(.vertical, 30)
                
//                TextEditor(text: $specialRequest)
//                    .padding(8)
//                    .background(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.gray, lineWidth: 1)
//                    )
//                    .scrollContentBackground(.hidden)
//                
//                if specialRequest.isEmpty {
//                    Text("Special Requests")
//                        .foregroundColor(.gray)
//                        .padding(.horizontal, 12)
//                        .padding(.vertical, 16)
//                }
//            .frame(width: 300, height: 75)
//            .padding()
            //                TextboxView()
            //                TextEditor(text:$specialRequest)
            //                    .background(Color.white)
            //                    .cornerRadius(16)
            //                    .overlay(RoundedRectangle(cornerRadius: 15)
            //                        .stroke(Color.gray, lineWidth: 1))
            //                    .frame(width: 250, height: 75)
            //                    .padding(.bottom)
            
            //                TextField("Special Requests", text: $specialRequest)
            //                    .lineLimit(1...5)
            //                    .frame(width: 300, height: 50)
            //                    .textFieldStyle(.roundedBorder)
            //                    .padding(.horizontal, 50)
            //                    .padding(.bottom)
            Button("Add to Order") {
                updateOrder()
                showingSheet.toggle()
                
            }
        }
        .sheet(isPresented: $showingSheet)
        {OrderConfirmationView(drink:drink)
            
        }
        
    }
    
        .toolbar {
            
            //                ToolbarItem(placement: .topBarTrailing){
            //                    NavigationLink{
            //                        CartView()}
            //                    label: {
            //                        Image(systemName: "cart")
            //                    }
            //                }
            ToolbarItem(placement: .principal) {
                Image(.coLogoWhite)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
            }
        }

}
    func updateOrder() {
        if specialRequest != "" {
            drink.specialRequests = specialRequest
        }
        
    }
}

#Preview {
    DrinkCustomizationView(drink: Drink(name: "", assetName: ""))
}
