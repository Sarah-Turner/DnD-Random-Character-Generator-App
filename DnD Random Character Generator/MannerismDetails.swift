//
//  MannerismDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct MannerismDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var mannerism: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Mannerism")
            {
                self.mannerism = generator.generateMannerism()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Mannerism: " + self.mannerism).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    MannerismTraitDetails()
//}
