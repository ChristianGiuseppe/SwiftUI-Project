//
//  FruttellaApp.swift
//  Fruttella
//
//  Created by Christian Nocerino on 05/10/22.
//

import SwiftUI

@main
struct FruttellaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
           
        }
    }
}
