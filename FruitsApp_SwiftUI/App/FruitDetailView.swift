//
//  FruitDetailView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 14.11.2022.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: Property
    
    let model: Fruit
    
    // MARK: Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(model: self.model)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(self.model.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(self.model.gradientColors[1])
                        
                        // Headline
                        Text(self.model.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        
                        
                        // Subheadline
                        Text("Learn more about \(self.model.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(self.model.gradientColors[1])
                        
                        // Description
                        Text(self.model.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
            } //: ScrollView
            .edgesIgnoringSafeArea(.top)
        } //: NavigationView
    }
}

// MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(model: fruitsData[0])
    }
}
