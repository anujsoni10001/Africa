//
//  VideoListItem.swift
//  Africa
//
//  Created by Anuj Soni on 10/04/22.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video:Video
    
    var body: some View {
        HStack(spacing:10){
            ZStack{
        //Things changes according to User Requirements
        Image(video.thumbnail)
            .resizable()
            //100%% Zoom Out
            .scaledToFit()
            .frame(height:80)
            .cornerRadius(9)
        
        Image(systemName:"play.circle")
            .resizable()
            .scaledToFit()
            .frame(height: 32)
            .shadow(radius: 4)
        }
        
        VStack(alignment:.leading, spacing:10){

        Text(video.name)
        .font(.title2)
        .fontWeight(.heavy)
        .foregroundColor(.accentColor)

        Text(video.headline)
        .font(.footnote)
        .multilineTextAlignment(.leading)
        .lineLimit(2)

        }
            
        }
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    
    static let videos:[Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
