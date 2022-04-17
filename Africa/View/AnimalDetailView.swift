//
//  AnimalDetailedView.swift
//  Africa
//
//  Created by Anuj Soni on 07/04/22.
//

import SwiftUI

struct AnimalDetailView: View {
    
    var animal:Animal
    
    var body: some View {
        ScrollView(.vertical,showsIndicators:false){
        VStack(alignment: .center, spacing:20){
    
        //Hero Image
        Image(animal.image)
            .resizable()
            //Aspect Fill
            .scaledToFit()
            //.frame(width:400, height: 300, alignment: .center)
        
        //Title
        Text(animal.name.uppercased())
        .font(.largeTitle)
        .fontWeight(.heavy)
        .multilineTextAlignment(.center)
        .foregroundColor(.primary)
        .padding(.vertical,8)
        //.background(Color.accentColor, in: Capsule())
        .background(
        //Rectangle().foregroundColor(.accentColor)
        Color.accentColor
        .frame(height: 6)
         .offset(y:24)
        )
        
        //headline
        Text(animal.headline)
        .font(.headline)
        .multilineTextAlignment(.leading)
        .foregroundColor(.accentColor)
        .padding(.horizontal)

        //Gallery
        Group{
        HeadingView(headingImage:"photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
        InsertGalleryView(animal: animal)
        }
        .padding(.horizontal)
            
        Group{
        HeadingView(headingImage:"questionmark.circle", headingText: "Did you Know?")
        //InsertGalleryView(animal: animal)
            
        //Facts
        InsertFactView(animal:animal)
        
        }
        .padding(.horizontal)
            
        //Description
        Group
        {
        HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
              
        Text(animal.description)
        .multilineTextAlignment(.leading)
        .layoutPriority(1)
        }
        .padding(.horizontal)
            
        // MARK: - map api code
        //Map
        Group{
        HeadingView(headingImage:"map", headingText: "Nationals Parks")
        InsertMapView()
        }
        .padding(.horizontal)
        
        // MARK: - link view
        Group{
        HeadingView(headingImage:"books.vertical", headingText: "Learn More")
        InsertLinkView(animal:animal)
        }
        .padding(.horizontal)
    
            
        .navigationBarTitle("Learn about \(animal.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
    }
    }
}

struct AnimalDetailedView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalDetailView(animal: animals[5])
    }
}

