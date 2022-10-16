//
//  LogoView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Text("TOUCH".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .padding()
    }
}
