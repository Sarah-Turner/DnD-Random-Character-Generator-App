//
//  InteractionTraitDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct InteractionTraitDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var trait: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Interaction Trait")
            {
                self.trait = generator.generateInteractionTrait()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Interaction Trait: " + self.trait).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    InteractionTraitDetails()
//}
