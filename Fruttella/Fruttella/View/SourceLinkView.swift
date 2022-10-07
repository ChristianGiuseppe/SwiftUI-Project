//
//  SourceLinkView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct SourceLinkView: View {
    var content: String
    var url : String
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: url)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(content: "Content source",
                       url: "https://wikipedia.com")
            .padding()
    }
}
