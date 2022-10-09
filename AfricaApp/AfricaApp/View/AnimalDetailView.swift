//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 08/10/22.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: AnimalModel
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color
                            .accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                Group{
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                        InsetGalleryView(animal: animal)
                    
                }
                
                
                Group{
                    HeadingView(
                        headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }.padding(.horizontal)
                
                Group{
                    HeadingView(
                        headingImage: "info.circle", headingText: "All about \(animal.name)"
                        
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    )
                }.padding(.horizontal
                )
            }
            
        }.navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalDetailView(animal: animals[1])
    }
}