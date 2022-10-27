//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 27/10/22.
//

import SwiftUI

struct RatingSizesDetailView: View {
    let sizes : [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3,content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 3, content:{
                    ForEach(1...5, id: \.self){_ in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill").frame(width: 28, height: 28,  alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                    })
                    }
                })
                
               
            })
            Spacer()
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Size")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 3, content:    {
                    ForEach(sizes, id: \.self){size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .frame(width: 28, height: 28, alignment: .center)   
                                .foregroundColor(colorGray)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 1))
                        })
                    }
                    
                })
            })
        })
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .padding()
    }
}
