//
//  NameDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct NameDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var name: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Name")
            {
                self.name = generator.generateName()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Name: " + self.name).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    NameDetails()
//}
