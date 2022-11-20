//
//  SettingsLabelView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 20.11.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: Property
    
    var labelText: String
    var labelImage: String
    
    // MARK: Body
    
    var body: some View {
        HStack {
            Text(self.labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: self.labelImage)
        } //: HStack 
    }
}

// MARK: - Preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
