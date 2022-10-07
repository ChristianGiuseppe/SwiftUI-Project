//
//  ContentView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 05/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings:Bool = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit:fruit)){
                        FruitRowView(fruit: fruit).padding(.vertical, 4)
                    }
                 
                }
            }
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button(action: {isShowingSettings = true}){
                        Image(systemName: "slider.horizontal.3")
                    }.sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
