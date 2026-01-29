//
//  SweetCustomizationView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/16/25.
//

//import SwiftUI
//
//struct SweetCustomizationView: View {
//    
//    @State var food : Food
//    
//    var body: some View {
//        
//        ScrollView (.vertical)  {
//            VStack  {
//                
//                VStack (alignment: .leading)    {
//                    
//                    Image(food.assetName)
//                        .resizable()
//                        .padding(.bottom)
//                        .scaledToFill()
//                        .frame(width: 176, height: 128)
//                        .background(.accentCOBlue)
//                        .clipShape(RoundedRectangle(cornerRadius: 7))
//                        .padding(10)
//                    
//                    Text (food.name)
//                        .foregroundColor(.black)
//                        .foregroundStyle(.black)
//                        .font(.custom("calibri-regular", size: 18))
//                        .padding(.top, 10)
//                        .padding(.bottom, 25)
//                }
//                
//                .background(RoundedRectangle(cornerRadius: 16))
//                .foregroundStyle(.white)
//                .shadow(radius: 8)
//                .backgroundStyle(.accentCOBlue)
//                .padding()
//                
//            }
//        }
//    }
//}
//
//        #Preview {
//            SweetCustomizationView(food:Food (name: "", assetName: ""))
//}
//                            NavigationLink  {
//                                FoodCustomizeView(food: Food(name: "", assetName: ""))}
//                            label: {FoodListView(food: Food(name: "", assetName: ""))}
//                        }

//                        switch food.foodType {
//                            case .Bread :
//                                NavigationLink  {
//                                    BreadCustomizationView(food: Food (name: "", assetName: ""))
//                                } label:  {
//                                    FoodListView(food:Food(name: food.name, assetName: food.assetName, foodType: food.foodType))
//                                }
//                            case .Fruit :
//                                NavigationLink {
//                                    FoodCustomizeView()
//                                } label: {
//                                    FoodListView(food:Food(name: food.name, assetName: food.assetName, foodType: food.foodType))
//                                }
//                            case .Sandwich :
//                                NavigationLink {
//                                    SandwichCustomizationView(food:Food (name: "", assetName: ""))
//                                } label: {
//                                    FoodListView(food:Food(name: food.name, assetName: food.assetName, foodType: food.foodType))
//                                }
//                            case . Sweet :
//                                NavigationLink{
//                                    FoodCustomizeView(food: Food (name: "", assetName: ""))
//                                } label: {
//                                    FoodListView(food:Food(name: food.name, assetName: food.assetName, foodType: food.foodType))
//                                }
//                            }
