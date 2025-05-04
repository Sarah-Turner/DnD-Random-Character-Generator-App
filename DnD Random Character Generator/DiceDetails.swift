//
//  DiceDetails.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/25/24.
//


import SwiftUI

struct DiceDetails: View {
    @Binding var generator: RandomCharacterGenerator
    @State var d20Roll: Int = 0
    @State var d12Roll: Int = 0
    @State var d10Roll: Int = 0
    @State var d8Roll: Int = 0
    @State var d6Roll: Int = 0
    @State var d4Roll: Int = 0
    @State var d100Roll: Int = 0
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .center) {
                Image("D20")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D20")
                {
                    self.d20Roll = generator.randomBetween(min: 1, max: 20)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d20Roll)).padding().font(.title)
            }
            
            Divider()
        
            VStack(alignment: .center) {
                Image("D12")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D12")
                {
                    self.d12Roll = generator.randomBetween(min: 1, max: 12)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d12Roll)).padding().font(.title)
            }
            
            Divider()
            
            VStack(alignment: .center) {
                Image("D10")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D10")
                {
                    self.d10Roll = generator.randomBetween(min: 1, max: 10)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d10Roll)).padding().font(.title)
            }
            
            Divider()
            
            VStack(alignment: .center) {
                Image("D8")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D8")
                {
                    self.d8Roll = generator.randomBetween(min: 1, max: 8)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d8Roll)).padding().font(.title)
            }
            
            Divider()
            
            VStack(alignment: .center) {
                Image("D6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D6")
                {
                    self.d6Roll = generator.randomBetween(min: 1, max: 6)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d6Roll)).padding().font(.title)
            }
            
            Divider()
            
            VStack(alignment: .center) {
                Image("D4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D4")
                {
                    self.d4Roll = generator.randomBetween(min: 1, max: 4)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d4Roll)).padding().font(.title)
            }
            
            Divider()
            
            VStack(alignment: .center) {
                Image("D100")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                Button("Roll 1D100")
                {
                    self.d100Roll = generator.randomBetween(min: 1, max: 100)
                }
                .buttonStyle(.borderedProminent)
                Text("Result: " + String(self.d100Roll)).padding().font(.title)
            }
            
        }.padding()
            
            
            
    }
}

//#Preview {
//    DiceDetails()
//}
