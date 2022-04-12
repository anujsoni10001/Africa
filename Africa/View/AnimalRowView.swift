//
//  AnimalRowView.swift
//  Africa
//
//  Created by Anuj Soni on 07/04/22.
//

import SwiftUI

struct AnimalRowView: View {
    
    var animal:Animal
    
    var body: some View {
        HStack(alignment:.center, spacing:16){
                        Image(animal.image)
                        .resizable()
                        //Aspect Fill
                        //It depends on requirements
                        //whether we want to display
                        //full picture or not
                        .scaledToFill()
                        //Zoomed In
                        .frame(width: 90, height: 90, alignment: .center)
                        .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                        )
                        //.cornerRadius(12)
                    
                    

                    VStack(alignment:.leading, spacing:8){

                    Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)

                    Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .foregroundColor(.secondary)
                    .padding(.trailing,8)

                    }
                }
                }
}

struct AnimalRowView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalRowView(animal:animals[0])
            .previewLayout(.sizeThatFits)
            .padding()

    }
}

