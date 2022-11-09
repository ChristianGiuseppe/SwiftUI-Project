//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by Christian Nocerino on 09/11/22.
//

import SwiftUI

@main
struct Todo_App: App {
    var persistenceController  =  PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
