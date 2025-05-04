//
//  WeaponDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct WeaponDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var weapon: Weapon = Weapon()
    
    var body: some View {
        ScrollView {
            
            Button("Generate Weapon")
            {
                self.weapon = generator.generateWeapon()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Weapon: " + self.weapon.name).padding().font(.title)
                Text("Damage: " + String(self.weapon.numDice) + "D" + String(self.weapon.dmgDice))
                Text("Weapon is one handed: " + String(self.weapon.isOneHanded))
                Text("Uses dex mod: " + String(self.weapon.useDex))
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    WeaponDetails()
//}
