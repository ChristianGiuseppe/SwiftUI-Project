//
//  BackgroundImageView.swift
//  Devnote
//
//  Created by Christian Nocerino on 04/11/22.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
      Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
