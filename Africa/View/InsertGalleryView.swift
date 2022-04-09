//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Anuj Soni on 07/04/22.
//

import SwiftUI

struct InsertGalleryView: View {
    
    var animal:Animal
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false){
        HStack(alignment: .center, spacing:15){
        ForEach(animal.gallery,id:\.self){item in
        Image(item)
        .resizable()
        //Aspect Fill
        .scaledToFit()
        .frame(height:200)
        .cornerRadius(12)
        }
        }
        }
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
   
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertGalleryView(animal:animals[0])
    }
}
