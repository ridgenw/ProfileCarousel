////
////  HeaderView.swift
////  ProfileAnimation-TestApp
////
////  Created by Ridge Williams on 12/7/22.
////
//
//import SwiftUI
//
//struct HeaderView: View {
//    
//    @ObservedObject var animation: LogicalData
//    
//    var body: some View {
//        
//        NavigationView{
//            ScrollView {
//                HomePage()
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button(action: {
//                        // Takes users to the top of the home page....
//                    }, label: {
//                        Text("Peacock")
//                            .font(.system(size: 30,  weight: .heavy, design: .rounded))
//                            .frame(width: 150)
//                            .padding(.bottom, 10)
//                            .foregroundColor(.blue)
//                        
//                    })
//                }
//                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    
//                    Button(action: {
//                        withAnimation() {
//                            animation.onboardingScreen.toggle() // = true
//                            // = true
//                        }
//                    }, label: {
//                        ProfileIcon(color: Color.green)
//                        
//                    })
//                }
//            }
//            
//        }
//    }
//}
//
//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView(animation: LogicalData())
//    }
//}
