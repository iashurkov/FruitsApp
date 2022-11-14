//
//  FruitRowView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 09.11.2022.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: Property
    
    var model: Fruit
    
    // MARK: Body
    
    var body: some View {
        HStack {
            Image(self.model.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: self.model.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(self.model.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(self.model.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            } //: VStack
        } //: HStack
    }
}

// MARK: - Preview

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(model: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
