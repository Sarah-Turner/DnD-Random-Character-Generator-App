//
//  ProfessionDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//



import SwiftUI

struct ProfessionDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var profession: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Profession")
            {
                self.profession = generator.generateProfession()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Profession: " + self.profession).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    ProfessionDetails()
//}
