//
//  ContentView.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var generator: RandomCharacterGenerator = RandomCharacterGenerator()

    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image("CharacterSheet")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .aspectRatio(contentMode: .fit)
                    NavigationLink("Character Generator")
                    {
                        CharacterDetails(generator: self.$generator)
                    }
                }
                
                HStack {
                    Image("D20")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .aspectRatio(contentMode: .fit)
                    NavigationLink("Dice")
                    {
                        DiceDetails(generator: self.$generator)
                    }
                }
                
                HStack {
                    Image("AbilityScore")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .aspectRatio(contentMode: .fit)
                    NavigationLink("Ability Score Generator")
                    {
                        AbilityDetails(generator: self.$generator)
                    }
                }
                
                NavigationLink("Name Generator")
                {
                    NameDetails(generator: self.$generator)
                }
                NavigationLink("Race Generator")
                {
                    RaceDetails(generator: self.$generator)
                }
                NavigationLink("Weapon Generator")
                {
                    WeaponDetails(generator: self.$generator)
                }
                NavigationLink("Armor Generator")
                {
                    ArmorDetails(generator: self.$generator)
                }
                NavigationLink("Alignment Ideal Generator")
                {
                    AlignmentDetails(generator: self.$generator)
                }
                NavigationLink("Bond Generator")
                {
                    BondDetails(generator: self.$generator)
                }
                NavigationLink("Appearance Feature Generator")
                {
                    AppearanceDetails(generator: self.$generator)
                }
                NavigationLink("Profession Generator")
                {
                    ProfessionDetails(generator: self.$generator)
                }
                NavigationLink("Talent Generator")
                {
                    TalentDetails(generator: self.$generator)
                }
                NavigationLink("Interaction Trait Generator")
                {
                    InteractionTraitDetails(generator: self.$generator)
                }
                NavigationLink("Mannerism Generator")
                {
                    MannerismDetails(generator: self.$generator)
                }
                NavigationLink("Flaw Generator")
                {
                    FlawDetails(generator: self.$generator)
                }
                NavigationLink("Secret Generator")
                {
                    SecretDetails(generator: self.$generator)
                }
                NavigationLink("Activity Generator")
                {
                    ActivityDetails(generator: self.$generator)
                }
                
                
                
            }
            .navigationTitle("Random Generators")
        }
            
            
    }
}

#Preview {
    ContentView()
}
