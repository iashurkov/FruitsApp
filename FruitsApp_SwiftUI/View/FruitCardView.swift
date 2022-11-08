//
//  FruitCardView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 07.11.2022.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: Property
    
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    // MARK: Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // CARD: Image
                Image(self.fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(self.isAnimating ? 1.0 : 0.6)
                
                // CARD: Title
                Text(self.fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                // CARD: Headline
                Text(self.fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // CARD: Start button
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity,
               alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: self.fruit.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
