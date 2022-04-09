//
//  InsertLinkView.swift
//  Africa
//
//  Created by Anuj Soni on 09/04/22.
//

import SwiftUI

struct InsertLinkView: View {
    
    var animal:Animal
    
    var body: some View {
        GroupBox(content:{
               HStack{
               Image(systemName:"globe")
               Text("Wikipedia")
               Spacer()
            
               Group{
               Image(systemName:"arrow.up.right.square")
                   
              Link(animal.name, destination: URL(string:animal.link) ?? URL(string:"https://en.wikipedia.org/wiki/Main_Page")!)
               }
               .foregroundColor(.accentColor)
               }
               })
    }
}

struct InsertLinkView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
