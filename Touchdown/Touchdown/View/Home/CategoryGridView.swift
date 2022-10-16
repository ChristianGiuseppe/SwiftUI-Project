//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
                Section(header: SectionView(), footer: SectionView(clockWiseAngle: false)){
                    ForEach(categories){
                        category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
           
        })
      
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .padding()
            .background(colorBackground)
    }
}
