//
//  SettingsRowView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct SettingsRowView: View {
    var textInfo: String
    var info: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        Divider().padding(.vertical, 4)
        HStack{
            Text(textInfo).foregroundColor(Color.gray)
            Spacer()
            if (info != nil){
                Text(info!)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!,  destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }else{
                EmptyView()
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(textInfo: "Developer", info: "Christian")
            .padding()
    }
}
