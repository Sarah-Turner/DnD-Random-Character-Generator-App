//
//  AbilityDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct AbilityDetails: View {
    @Binding var generator: RandomCharacterGenerator
    //@State var tgenerator: RandomCharacterGenerator = RandomCharacterGenerator()
    @State var abilityScore: Int = 0
    @State var abilityModifier: Int = 0
    
    var body: some View {
        ScrollView {
            
            Button("Generate Ability Score")
            {
                self.abilityScore = generator.rollStat()
                self.abilityModifier = generator.getAbilityModifier(abilityScore: self.abilityScore)
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Ability Score: " + String(self.abilityScore)).padding().font(.title)
                Text("Modifier: " + String(self.abilityModifier)).padding()
                
                
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    AbilityDetails()
//}
