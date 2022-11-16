//
//  FruitNutrientsView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 16.11.2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: Property
    
    let model: Fruit
    
    private let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: Body
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< self.nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(self.nutrients[item])
                        } //: Group
                        .foregroundColor(self.model.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        Text(self.model.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HStack
                } //: ForEach
            } //: DisclosureGroup
        } //: GroupBox
    }
}

// MARK: - Preview

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(model: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
