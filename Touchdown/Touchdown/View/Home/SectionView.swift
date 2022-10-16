//
//  SectionView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct SectionView: View {
    @State var clockWiseAngle: Bool = true
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: clockWiseAngle ?  90 :  -90))
            Spacer()
        }.background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(clockWiseAngle: true)
            .frame(width: 120, height: 120)
            .padding()
            .background(colorBackground)
    }
}
