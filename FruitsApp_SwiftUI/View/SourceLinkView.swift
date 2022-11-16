//
//  SourceLinkView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 14.11.2022.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: Body
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } //: HStack
            .font(.footnote)
        } //: GroupBox
    }
}

// MARK: - Preview

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
