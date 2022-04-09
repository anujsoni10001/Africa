//
//  CoverImageView.swift
//  Africa
//
//  Created by Anuj Soni on 06/04/22.
//

import SwiftUI

struct CoverImageView: View {
    
let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView{

            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    //Aspect Fill
                    .scaledToFill()
            }
            
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        CoverImageView()
        .previewLayout(.fixed(width:400, height: 300))
    }
}

