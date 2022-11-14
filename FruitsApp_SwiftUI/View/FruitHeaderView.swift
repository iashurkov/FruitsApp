//
//  FruitHeaderView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 14.11.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: Property
    
    let model: Fruit
    
    @State private var isAnimation = false
    
    // MARK: Body
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: self.model.gradientColors),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            Image(self.model.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(self.isAnimation ? 1 : 0.6)
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimation = true
            }
        }
    }
}

// MARK: - Preview

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(model: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
