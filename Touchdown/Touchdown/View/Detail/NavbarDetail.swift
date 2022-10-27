//
//  NavbarDetail.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct NavbarDetail: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeOut){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }){
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {}){
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct NavbarDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavbarDetail()
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
