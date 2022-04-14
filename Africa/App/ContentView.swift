//
//  ContentView.swift
//  Africa
//
//  Created by Anuj Soni on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    let animals:[Animal] = Bundle.main.decode("animals.json")

    var body: some View {
        
        NavigationView{
        List{
        CoverImageView()
        .frame(height:300)
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    
            
        ForEach(animals){item in
        NavigationLink(destination:AnimalDetailView(animal:item)){
        AnimalRowView(animal:item)
        }
        }
            
        }
        .toolbar{
        ToolbarItem(placement:.navigationBarTrailing){
        HStack(spacing:16){
        Button(action: {
        print("fmrkmf")
        }){
        Image(systemName:"square.fill.text.grid.1x2")
        .font(.title2)
        .foregroundColor(.accentColor)
        }
        }
        }
        }
        .navigationTitle("Africa")
        .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


