//
//  ActivityDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/24/24.
//

import SwiftUI

struct ActivityDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var activity: CurrentActivity = CurrentActivity()
    
    var body: some View {
        ScrollView {
            
            Button("Generate Current Activity")
            {
                self.activity = generator.generateCurrentActivity()
            }
            .buttonStyle(.borderedProminent)
            VStack(alignment: .center) {
                Text("Current Activity: " + self.activity.currentActivity).padding().font(.title)
                Text("Description: " + self.activity.description)
                Text("Random Detail: " + self.activity.randomDetail)
            }
        }.padding()
            
            
            
    }
}

//#Preview {
//    ActivityDetails()
//}
