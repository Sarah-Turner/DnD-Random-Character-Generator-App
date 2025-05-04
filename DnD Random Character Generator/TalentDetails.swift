//
//  TalentDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct TalentDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var talent: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Talent")
            {
                self.talent = generator.generateTalent()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Talent: " + self.talent).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    TalentDetails()
//}
