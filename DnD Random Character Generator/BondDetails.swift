//
//  BondDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct BondDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var bond: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Bond")
            {
                self.bond = generator.generateBond()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Bond: " + self.bond).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    BondDetails()
//}
