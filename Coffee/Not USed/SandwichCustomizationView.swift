//
//  SandwichCustomizationView.swift
//  Coffee
//
//  Created by Tesneem Nasser on 10/22/25.
//

//import SwiftUI
//
//struct SandwichCustomizationView: View {
//    
//    @State var food: Food
//    @State var specialRequest: String = ""
//    @State var showingSheet = false
//   
//    var body: some View {
//       
//        ScrollView (.vertical)  {
//            VStack  {
//                    
//                    VStack (alignment: .leading)    {
//                        
//                        Image(food.assetName)
//                            .resizable()
//                            .padding(.bottom)
//                            .scaledToFill()
//                            .frame(width: 176, height: 128)
//                            .background(.accentCOBlue)
//                            .clipShape(RoundedRectangle(cornerRadius: 7))
//                            .padding(10)
//                        
//                        Text (food.name)
//                            .foregroundColor(.black)
//                            .foregroundStyle(.black)
//                            .font(.custom("calibri-regular", size: 18))
//                            .padding(.top, 10)
//                            .padding(.bottom, 25)
//                    }
//                    
//                    .background(RoundedRectangle(cornerRadius: 16))
//                    .foregroundStyle(.white)
//                    .shadow(radius: 8)
//                    .backgroundStyle(.accentCOBlue)
//                    .padding()
//                
//                Text("Size")
//                    .padding(.top, 0.24)
//                    .padding(.bottom,0.12)
//                Picker("Size", selection:$food.creamCheese){
//                    ForEach( CreamCheese.allCases, id: \.self) {
//                        Text($0.rawValue)
//                        }
//                    } .pickerStyle(.segmented)
//                    .padding()
//
//                
//                Text("Milk")
//                    .padding(.top, 0.24)
//                    .padding(.bottom, 0.12)
//                Picker("Milk", selection:$food.toastLevel){
//                    ForEach ( ToastLevel.allCases, id:\.self) {
//                    Text($0.rawValue)
//                        }
//                    } .pickerStyle(.segmented)
//                    .padding()
//                
////                Text("Syrup")
////                Picker("Syrup", selection:$food.syrup){
////                    ForEach ( Syrups.allCases, id:\.self) {
////                        Text($0.rawValue)
////                    }
////                } .pickerStyle(.wheel)
////                
////                Stepper ("Sugars: \(food.sugars)", value: $drink.sugars, in:0...15)
////                    .padding()
////                
////                Toggle("Ice", isOn: $drink.ice)
////                    .padding()
////               
////               TextField("Special Requests", text: $specialRequest)
////                    .padding()
//                
//                Button("Add to Order") {
//                    updateOrder()
//                    showingSheet.toggle()
//                    
//                }
//            }
//            .sheet(isPresented: $showingSheet)
//            {OrderConfirmationView()
//                
//            }
//        }
//    }
//    func updateOrder() {
//        if specialRequest != "" {
//            food.specialRequests = specialRequest
//        }
//        
//    }
//}
//
//#Preview {
//    SandwichCustomizationView(food:Food (name: "", assetName: ""))
//}
