//
//  ContentView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 07.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Property
    
    let viewModel: [Fruit]
    
    // MARK: Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.shuffled()) { model in
                    NavigationLink(destination: FruitDetailView(model: model)) {
                        FruitRowView(model: model)
                            .padding(.vertical, 4)
                    }
                }
            } //: List
            .navigationTitle("Fruits")
        } //: NavigationView
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: fruitsData)
    }
}
