//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import SwiftUI

struct VideoListItem: View {
    let video: VideoModel
    var body: some View {
        HStack{
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 42)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10){
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

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [VideoModel] = Bundle.main
        .decode("videos.json")
    static var previews: some View {
        VideoListItem(video: videos[0])
            .padding()
    }
}
