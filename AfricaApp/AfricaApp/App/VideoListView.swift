//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    let hapticsImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView{
            List{
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)){
                        VideoListItem(video: video)
                            .padding(.vertical, 8)
                    }
                    
                }
            } .navigationTitle("Videos")
                .navigationBarTitleDisplayMode(.inline)
        }.listStyle(InsetGroupedListStyle())
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        videos.shuffle()
                        hapticsImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
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
