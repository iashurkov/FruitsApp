//
//  OnboardingView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 08.11.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: Property
    
    let viewModel: [Fruit]
    
    // MARK: Body
    
    var body: some View {
        TabView {
            ForEach(self.viewModel[0...5]) { item in
                FruitCardView(fruit: item)
            } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewModel: fruitsData)
    }
}
