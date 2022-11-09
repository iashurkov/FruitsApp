//
//  FruitsApp_SwiftUIApp.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 07.11.2022.
//

import SwiftUI

@main
struct FruitsApp_SwiftUIApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if self.isOnboarding {
                OnboardingView(viewModel: fruitsData)
            } else {
                ContentView(viewModel: fruitsData)
            }
        }
    }
}
