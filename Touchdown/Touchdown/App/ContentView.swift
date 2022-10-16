//
//  ContentView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: Properties
    
    // MARK: body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                    NavbarView()
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom, 16)
                    .padding(.horizontal, 16)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0){
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        LazyVGrid(columns: gridLayout, spacing:15, content: {
                            ForEach(products){
                                product in
                                ProductItemView(product: product)
                                    .frame(
                                        width: 150, height: 200)
                            }
                        })
                      
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        BrandGridView()
                        
                        FooterView()
                        .padding(.horizontal)
                    }
                })
                
                 
            }
        
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
