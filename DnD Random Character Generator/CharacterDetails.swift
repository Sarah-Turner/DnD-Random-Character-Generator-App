//
//  CharacterDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct CharacterDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var randomCharacter: DnDCharacter = DnDCharacter()
    var body: some View {
        ScrollView {
            
            Button("Generate Character")
            {
                self.randomCharacter = generator.generateCharacter()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Name: " + randomCharacter.name).padding().font(.title)
                Text("Stats").padding().font(.title)
                Text("Max Health: " + String(self.randomCharacter.stats.maxHealth)).padding()
                Text("Armor Class: " + String(self.randomCharacter.stats.AC)).padding()
                Divider()
                Text("Strength: " + String(self.randomCharacter.stats.strength)).padding()
                Text("Dexterity: " + String(self.randomCharacter.stats.dexterity)).padding()
                Text("Constitution: " + String(self.randomCharacter.stats.constitution)).padding()
                Text("Intelligence: " + String(self.randomCharacter.stats.intelligence)).padding()
                Text("Wisdom: " + String(self.randomCharacter.stats.wisdom)).padding()
                Text("Charisma: " + String(self.randomCharacter.stats.charisma)).padding()
                Divider()
                Text("Equipment").padding().font(.title)
                Text("Weapon: " + String(self.randomCharacter.equipment.weapon.name)).padding()
                Text("Armor: " + String(self.randomCharacter.equipment.armor.name)).padding()
                Text("Shield: " + String(self.randomCharacter.equipment.shield.name)).padding()
                Text("Features").padding().font(.title)
                Text("Race: " + randomCharacter.features.race).padding()
                Text("Alignment: " + randomCharacter.features.alignment[0] + ", " + randomCharacter.features.alignment[1]).padding()
                Text("Ideal: " + randomCharacter.features.ideal).padding()
                Text("Bond: " + randomCharacter.features.bond).padding()
                Divider()
                Text("Appearance Feature: " + randomCharacter.features.appearanceFeature).padding()
                Text("Profession: " + randomCharacter.features.profession).padding()
                Text("Talent: " + randomCharacter.features.talent).padding()
                Text("Interaction Trait: " + randomCharacter.features.interactionTrait).padding()
                Text("Mannerism: " + randomCharacter.features.mannerism).padding()
                Text("Flaw: " + randomCharacter.features.flaw).padding()
                Text("Secret: " + randomCharacter.features.secret).padding()
                Divider()
                Text("Current Activity").padding().font(.title)
                Text("Current Activity: " + randomCharacter.features.currentActivity.currentActivity).padding()
                Text("Description: " + randomCharacter.features.currentActivity.description).padding()
                Text("Random Detail: " + randomCharacter.features.currentActivity.randomDetail).padding()
                
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    CharacterDetails()
//}
