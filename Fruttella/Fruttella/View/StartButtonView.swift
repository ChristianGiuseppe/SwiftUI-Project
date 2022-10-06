//
//  StartButtonView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 05/10/22.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    // MARK: - BODY
    var body: some View {
    
            Button(action: {
                isOnboarding = false
                }){
                HStack (spacing: 8){
                    Text("Start")
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                }.padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(
                        Capsule()
                            .strokeBorder(Color.white, lineWidth: 1.25))
        }.accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().previewLayout(.sizeThatFits)
    }
}
