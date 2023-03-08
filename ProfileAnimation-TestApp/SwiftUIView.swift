//
//  SwiftUIView.swift
//  ProfileAnimation-TestApp
//
//  Created by Ridge Williams on 2/7/23.
//
import SwiftUI

struct SwiftUIView: View {
    @ObservedObject var model: AnimationModel
    var body: some View {
        NavigationView {
            ZStack {
                Text("You are signed in.")
                
                IconCarousel()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(model: AnimationModel())
        
    }
}
