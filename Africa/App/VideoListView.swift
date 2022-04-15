//
//  VideoListView.swift
//  Africa
//
//  Created by Anuj Soni on 05/04/22.
//

import SwiftUI

struct VideoListView: View {

    @State var videos:[Video] = Bundle.main.decode("videos.json")
    
    let hapticimpact = UIImpactFeedbackGenerator(style:.medium)
    
    var body: some View {
        
        NavigationView{
        List(videos){item in
            NavigationLink(destination:VideoPlayerView(videoSelected:item.id, videoTitle: item.name)){
                VideoListItemView(video: item)
                    .padding(.vertical,8)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Videos")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarItems(trailing:
//        Button{
//            videos.shuffle()
//        } label: {
//        Image(systemName:"arrow.2.squarepath")
//        }
//        )
        //alternative way through use of toolbars
        .toolbar{
        ToolbarItem(placement:.navigationBarTrailing){
            Button{
            videos.shuffle()
            hapticimpact.impactOccurred()
            } label: {
            Image(systemName:"arrow.2.squarepath")
            }
        }
        }
        }
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoListView()
    }
}
