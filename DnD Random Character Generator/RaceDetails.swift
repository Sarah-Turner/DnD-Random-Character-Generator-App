//
//  RaceDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct RaceDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var race: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Race")
            {
                self.race = generator.generateRace()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Race: " + self.race).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    RaceDetails()
//}
