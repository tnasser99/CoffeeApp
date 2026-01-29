//
//  BreadCustomizationView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/16/25.
//

//import SwiftUI
//
//struct BreadCustomizationView: View {
//        
//        @State var food : Food
////        @State var drink: Drink
//        @State var specialRequest: String = ""
//        @State var showingSheet = false
//       
//        var body: some View {
//            NavigationStack{
//                ScrollView (.vertical)  {
//                    VStack (alignment: .center) {
//                        ZStack{
//                            Rectangle().fill(.accentCOBlue)
//                                .shadow(radius: 6)
//                                .frame(width:402, height: 240)
//                                .shadow(color: .black, radius: 20, x:0, y:5)
//                            FoodListView(food:food)
//                        }.padding()
//                    }
//                        Text("Toast Level")
//                            .font(.custom("calibri-bold", size: 26))
//                            .foregroundStyle(.accentCOBlue)
//                        Picker("Size", selection:$food.toastLevel){
//                            ForEach (ToastLevel.allCases, id: \.self) {
//                                Text($0.rawValue)
//                            }
//                        } .pickerStyle(.segmented)
//                        .padding(.bottom, 30)
//                        .padding(.horizontal, 40)
//                        
//                        Text("Cream Cheese")
//                            .font(.custom("calibri-bold", size: 26))
//                            .foregroundStyle(.accentCOBlue)
//                        Picker("Milk", selection:$food.creamCheese){
//                            ForEach (CreamCheese.allCases, id:\.self) {
//                                Text($0.rawValue)
//                            }
//                        } .pickerStyle(.segmented)
//                        .padding(.bottom, 30)
//                        .padding(.horizontal, 38)
//                    
//                    
//                    Toggle("Seasoning", isOn: $food.seasoning)
//                    .font(.custom("calibri-bold", size: 24))
//                    .padding(.horizontal, 130)
//                    .padding(.bottom)
//                    .tint(.accentCOBlue)
//                    .foregroundStyle(.accentCOBlue)
//                
//                    TextboxView()
//                    
//                    Button("Add to Order") {
//                        updateOrder()
//                        showingSheet.toggle()
//                    }
//                    }
//                Spacer()
//                    .sheet(isPresented: $showingSheet)  {
//                        OrderConfirmationView(food:Food)
//                    }
//                }
//            
//            .toolbar {
//                
////                ToolbarItem(placement: .topBarTrailing){
////                    NavigationLink{
////                        CartView()} label: {
////                        Image(systemName: "cart")
////                    }
////                }
////                    ToolbarItem(placement: .principal) {
//                        Image(.coLogoWhite)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 80)
//                    }
//            }
//        }
//        func updateOrder() {
//            if specialRequest != "" {
//                food.specialRequests = specialRequest
//            }
//            
//        }
//    }
//
//#Preview {
//    BreadCustomizationView(food: Food (name: "", assetName: ""))
//}
