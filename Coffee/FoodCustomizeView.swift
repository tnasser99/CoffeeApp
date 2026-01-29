//
//  FoodCustomizeView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/23/25.
//

//import SwiftUI
//
//struct FoodCustomizeView: View {
//    
//    @State var food: Food
////    @State var drink: Drink
//    @State var specialRequest: String = ""
//    @State var showingSheet = false
//    @State private var isExpanded = false
//    
//    var body: some View {
//        NavigationStack{
//            VStack(alignment: .center){
//                ScrollView{
//                    ZStack{
//                        Rectangle().fill(.accentCOBlue)
//                            .shadow(radius: 6)
//                            .frame(width:402, height: 240)
//                            .shadow(color: .black, radius: 20, x:0, y:5)
//                        FoodListView(food:food)
//                    }
//                    .padding()
//                    
//                    Stepper (" \(food.number)", value: $food.number, in:0...15)
//                        .font(.custom("calibri-bold", size: 24))
//                        .padding(.horizontal, 100)
//                        .padding(.bottom)
//                        .foregroundStyle(.accentCOBlue)
//                    TextboxView()
//
//                    Button("Add to Order") {
//                        updateOrder()
//                        showingSheet.toggle()
//                    }
//                }
//            }
//            .sheet(isPresented: $showingSheet)  {
//                CartView()
//            }
//        }
//        .toolbar {
//            
//            ToolbarItem(placement: .topBarTrailing){
//                NavigationLink{
//                    CartView()} label: {
//                    Image(systemName: "cart")
//                }
//            }
//                    ToolbarItem(placement: .principal) {
//                        Image(.coLogoWhite)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 80)
//                    }
//        }
//    }
//        func updateOrder() {
//            if specialRequest != "" {
//                food.specialRequests = specialRequest
//            }
//            
//        }
//    }
//
//#Preview {
//    FoodCustomizeView(food:Food (name: "", assetName: ""))
//}
