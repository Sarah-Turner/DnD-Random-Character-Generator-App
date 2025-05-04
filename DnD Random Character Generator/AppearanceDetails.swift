//
//  AppearanceDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct AppearanceDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var feature: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Appearance Feature")
            {
                self.feature = generator.generateAppearanceFeature()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Appearance Feature: " + self.feature).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    AppearanceDetails()
//}
