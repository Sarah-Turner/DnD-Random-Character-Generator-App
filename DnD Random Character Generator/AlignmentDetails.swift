//
//  AlignmentDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct AlignmentDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var alignment: [String] = ["", ""]
    @State var ideal: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Alignment + Ideal")
            {
                self.alignment = generator.generateAlignment()
                self.ideal = generator.generateIdeal(alignmentPair: self.alignment)
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Alignment: " + self.alignment[0] + ", " + self.alignment[1]).padding().font(.title)
                Text("Ideal: " + self.ideal)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    AlignmentDetails()
//}
