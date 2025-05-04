//
//  ArmorDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//


import SwiftUI

struct ArmorDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var armor: Armor = Armor()
    
    var body: some View {
        ScrollView {
            
            Button("Generate Armor")
            {
                self.armor = generator.generateArmor()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Armor: " + self.armor.name).padding().font(.title)
                Text("AC: " + String(self.armor.AC))
                Text("Str Req: " + String(self.armor.strReq))
                Text("Uses Dex mod: " + String(self.armor.useDexMod))
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    ArmorDetails()
//}
