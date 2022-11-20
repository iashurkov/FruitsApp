//
//  ContentView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 07.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Property
    
    @State private var isShowingSettings = false
    
    let viewModel: [Fruit]
    
    // MARK: Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.shuffled()) { model in
                    NavigationLink(destination: FruitDetailView(model: model)) {
                        FruitRowView(model: model)
                            .padding(.vertical, 4)
                    } //: NavigationLink
                } //: ForEach
            } //: List
            .navigationTitle("Fruits")
            .toolbar {
                Button(action: {
                    self.isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: fruitsData)
    }
}
