//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPRERTIES
    //MARK: - BODY
    var covers: [CoverModel] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(covers){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
   
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
