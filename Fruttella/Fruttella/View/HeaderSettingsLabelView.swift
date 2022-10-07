//
//  HeaderSettingsLabelView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct HeaderSettingsLabelView: View {
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct HeaderSettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
