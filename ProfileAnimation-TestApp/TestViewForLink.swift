//
//  TestViewForLink.swift
//  ProfileAnimation-TestApp
//
//  Created by Ridge Williams on 12/23/22.
//

import SwiftUI

struct TestViewForLink: View {
    
    var string : String
    var number : Int
    
    var body: some View {
  
        if number == 1 {
            Text("number one title \(string)")
        } else if number == 2 {
            Text("number two title \(string)")
        } else if number == 3 {
            Text("number three title \(string)")
        } else {
            Text("other number title \(string)")
        }
    }
}

struct TestViewForLink_Previews: PreviewProvider {
    static var previews: some View {
        TestViewForLink(string: "", number: 1)
    }
}


struct TestArrayForLinkModel: Codable, Identifiable {
    var id = UUID()
    let title: String
}
var array = [
        TestArrayForLinkModel(title: "Title 1"),
        TestArrayForLinkModel(title: "Ttile 2"),
        TestArrayForLinkModel(title: "Title 3"),
        TestArrayForLinkModel(title: "Title 4"),
        TestArrayForLinkModel(title: "Ttile 5")
]

