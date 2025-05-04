//
//  SecretDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct SecretDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var secret: String = ""
    
    var body: some View {
        ScrollView {
            
            Button("Generate Secret")
            {
                self.secret = generator.generateSecret()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Secret: " + self.secret).padding().font(.title)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    SecretDetails()
//}
