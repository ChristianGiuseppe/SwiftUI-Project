//
//  SwiftUIView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    var body: some View {
        VStack{
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32), alignment: .topLeading)
            .padding(.top, 6)
            .padding(.horizontal, 8)
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle.capitalized, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VideoPlayerView(videoSelected: "lion", videoTitle:"lion")
        }
      
    }
}
