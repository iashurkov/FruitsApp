//
//  FruitsApp_SwiftUIApp.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 07.11.2022.
//

import SwiftUI

@main
struct FruitsApp_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingView(viewModel: fruitsData)
        }
    }
}
