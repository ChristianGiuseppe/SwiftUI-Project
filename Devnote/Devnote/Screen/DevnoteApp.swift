//
//  DevnoteApp.swift
//  Devnote
//
//  Created by Christian Nocerino on 29/10/22.
//

import SwiftUI

@main
struct DevnoteApp: App {
    var persistenceController  =  PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
