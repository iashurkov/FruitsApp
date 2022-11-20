//
//  SettingsRowView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 20.11.2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: Property
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(self.name).foregroundColor(.gray)
                Spacer()
                if let content {
                    Text(content)
                } else if let linkLabel,
                          let linkDestination,
                          let url = URL(string: "https://\(linkDestination)"){
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HStack
        } //: VStack
    }
}

// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Igor")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
