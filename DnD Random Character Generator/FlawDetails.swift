//
//  FlawDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct FlawDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var flaw: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Flaw")
            {
                self.flaw = generator.generateFlaw()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Flaw: " + self.flaw).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    FlawDetails()
//}
