//
//  SettingsView.swift
//  FruitsApp_SwiftUI
//
//  Created by Igor Ashurkov on 16.11.2022.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: Property
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // Mark: Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        } //: HStack
                    } //: GroupBox
                    
                    // Mark: Section 2
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Igor")
                        SettingsRowView(name: "Design", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Version SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version Application", content: "1.0")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        
                    } //: GroupBox
                    
                    // Mark: Section 3
                    
                } //: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    } //: Button
                }
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
