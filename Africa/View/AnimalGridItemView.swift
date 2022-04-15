//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Anuj Soni on 15/04/22.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    var animal:Animal
    
    var body: some View {
        Image(animal.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal:animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
