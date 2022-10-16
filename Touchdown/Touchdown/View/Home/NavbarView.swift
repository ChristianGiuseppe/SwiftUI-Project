//
//  NavbarView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct NavbarView: View {
    // MARK: Properties
    @State private var isAnimated : Bool = false
    // MARK: Body
    var body: some View {
        HStack {
            Button(action: {}){
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0 , y:  isAnimated ? 0 : -25)
                .onAppear(
                perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            Spacer()
            ZStack {
                Button(action: {}){
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
            }
        }
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView()
            .padding()
    }
}
