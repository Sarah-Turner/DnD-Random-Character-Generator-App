//
//  RandomCharacterGenerator.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/11/24.
//

import Foundation

// Merge some dice functions and file reading functions randBet, findMin, rollStat
// default constructor loads files
// functions to load each file

class RandomCharacterGenerator
{
    // List of random values for each attribute
    var nameList: [String]
    var weaponList: [Weapon]
    var armorList: [Armor]
    var shieldList: [Armor]
    var raceList: [String]
    var appearanceFeatureList: [String]
    var professionList: [String]
    var currentActivityList: [CurrentActivity]
    var alignmentList: [String]
    var talentList: [String]
    var interactionTraitList: [String]
    var mannerismList: [String]
    var lawfulIdealList: [String]
    var chaoticIdealList: [String]
    var neutralIdealList: [String]
    var goodIdealList: [String]
    var evilIdealList: [String]
    var otherIdealList: [String]
    var bondList: [String]
    var flawList: [String]
    var secretList: [String]
    
    
    
    // Constructor loads in text files to fill random list
    init()
    {
        // Set the random list to empty
        self.nameList = []
        self.weaponList = []
        self.armorList = []
        self.shieldList = []
        self.raceList = []
        self.appearanceFeatureList = []
        self.professionList = []
        self.currentActivityList = []
        self.alignmentList = ["Lawful", "Neutral", "Chaotic", "Good", "Neutral", "Evil"]
        self.talentList = []
        self.interactionTraitList = []
        self.mannerismList = []
        self.lawfulIdealList = []
        self.chaoticIdealList = []
        self.neutralIdealList = []
        self.goodIdealList = []
        self.evilIdealList = []
        self.otherIdealList = []
        self.bondList = []
        self.flawList = []
        self.secretList = []
        
        // Load in text files
        
        // Load names.txt
        if let fileURL = Bundle.main.url(forResource: "names", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.nameList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load weapons.txt
        if let fileURL = Bundle.main.url(forResource: "weapons", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                var counter: Int = 0
                var weapon:Weapon = Weapon()
                for line in lines
                {
                    if line == ""
                    {
                        break
                    }
                    if counter == 0
                    {
                        weapon.name = String(line)
                        counter += 1
                    }
                    else if counter == 1
                    {
                        weapon.dmgDice = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 2
                    {
                        weapon.numDice = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 3
                    {
                        weapon.useDex = Bool((String(line)))!
                        counter += 1
                    }
                    else if counter == 4
                    {
                        weapon.isOneHanded = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 5
                    {
                        weapon.attackText = String(line)
                        counter += 1
                    }
                    else if counter == 6
                    {
                        weapon.criticalHitText = String(line)
                        counter += 1
                    }
                    else if counter == 7
                    {
                        weapon.hitText = String(line)
                        counter += 1
                    }
                    else if counter == 8
                    {
                        weapon.missText = String(line)
                        counter += 1
                    }
                    else if counter == 9
                    {
                        weapon.criticalMissText = String(line)
                        counter += 1
                    }
                    else if counter == 10
                    {
                        self.weaponList.append(weapon)
                        weapon.name = String(line)
                        counter = 1
                    }
                    
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
       
        // Load armors.txt
        if let fileURL = Bundle.main.url(forResource: "armors", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                var counter: Int = 0
                var armor:Armor = Armor()
                for line in lines
                {
                    if line == ""
                    {
                        break
                    }
                    if counter == 0
                    {
                        armor.name = String(line)
                        counter += 1
                    }
                    else if counter == 1
                    {
                        armor.AC = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 2
                    {
                        armor.useDexMod = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 3
                    {
                        armor.dexModIsCapped = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 4
                    {
                        armor.hasStrReq = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 5
                    {
                        armor.strReq = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 6
                    {
                        armor.hasStealthDis = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 7
                    {
                        self.armorList.append(armor)
                        armor.name = String(line)
                        counter = 1
                    }
                    
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load shields.txt
        if let fileURL = Bundle.main.url(forResource: "shields", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                var counter: Int = 0
                var armor:Armor = Armor()
                for line in lines
                {
                    if line == ""
                    {
                        break
                    }
                    if counter == 0
                    {
                        armor.name = String(line)
                        counter += 1
                    }
                    else if counter == 1
                    {
                        armor.AC = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 2
                    {
                        armor.useDexMod = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 3
                    {
                        armor.dexModIsCapped = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 4
                    {
                        armor.hasStrReq = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 5
                    {
                        armor.strReq = Int(String(line))!
                        counter += 1
                    }
                    else if counter == 6
                    {
                        armor.hasStealthDis = Bool(String(line))!
                        counter += 1
                    }
                    else if counter == 7
                    {
                        self.shieldList.append(armor)
                        armor.name = String(line)
                        counter = 1
                    }
                    
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load races.txt
        if let fileURL = Bundle.main.url(forResource: "races", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.raceList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        // Load appearanceFeatures.txt
        if let fileURL = Bundle.main.url(forResource: "appearanceFeatures", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.appearanceFeatureList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
                
        // Load professions.txt
        if let fileURL = Bundle.main.url(forResource: "professions", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.professionList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
                
        // Load currentActivities.txt
        if let fileURL = Bundle.main.url(forResource: "currentActivities", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                var counter: Int = 0
                var currentActivity:CurrentActivity = CurrentActivity()
                for line in lines
                {
                    if counter == 0
                    {
                        currentActivity.currentActivity = String(line)
                        counter += 1
                    }
                    else if counter == 1
                    {
                        currentActivity.description = String(line)
                        counter += 1
                    }
                    else if counter == 2
                    {
                        currentActivity.randomDetail = String(line)
                        counter += 1
                    }
                    // Happens 7 times
                    else if counter >= 3 && counter < 10
                    {
                        currentActivity.detailList.append(String(line))
                        counter += 1
                    }
                    else if counter == 10
                    {
                        self.currentActivityList.append(currentActivity)
                        currentActivity.currentActivity = String(line)
                        counter = 1
                    }
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load talents.txt
        if let fileURL = Bundle.main.url(forResource: "talents", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.talentList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load interactionTraits.txt
        if let fileURL = Bundle.main.url(forResource: "interactionTraits", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.interactionTraitList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load mannerisms.txt
        if let fileURL = Bundle.main.url(forResource: "mannerisms", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.mannerismList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load lawfulIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "lawfulIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.lawfulIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load chaoticIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "chaoticIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.chaoticIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load neutralIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "neutralIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.neutralIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load goodIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "goodIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.goodIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load evilIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "evilIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.evilIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load otherIdeals.txt
        if let fileURL = Bundle.main.url(forResource: "otherIdeals", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.otherIdealList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load bonds.txt
        if let fileURL = Bundle.main.url(forResource: "bonds", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.bondList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load flaws.txt
        if let fileURL = Bundle.main.url(forResource: "flaws", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.flawList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        // Load secrets.txt
        if let fileURL = Bundle.main.url(forResource: "secrets", withExtension: "txt") {
            print("File exist!")
            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
                print("Reading Contents")
                var lines = fileContents.split(whereSeparator: \.isNewline)
                for line in lines
                {
                    self.secretList.append(String(line))
                }
            }
            else {
                print("Could not extract file!")
            }
        }
        else
        {
            print("Could not open file")
        }
        
        
        
    }
    
    // Function get random number between 2 values
    func randomBetween(min: Int, max: Int) -> Int
    {
        return Int.random(in: min...max)
    }
    
    // Function to find the min in an array of values
    func findMin(values: [Int]) -> Int
    {
        var min = values[0]
        
        for value in values
        {
            if value < min
            {
                min = value
            }
        }
        return min
    }
    
    // Function to roll a random stat for a character
    func rollStat() -> Int
    {
        var sum:Int = 0
        var discardMin: Bool = false
        var rolls:[Int] = []
        
        // Roll 4d6
        for i in 0..<4
        {
            rolls.append(randomBetween(min: 1, max: 6))
        }
        
        // Calculate the minimum of the rolled values
        var min:Int = findMin(values: rolls)
        
        // Discard the lowest value and add the remaining 3 values
        for roll in rolls
        {
            if (roll != min || discardMin == true)
            {
                sum += roll
            }
            else if (roll == min && discardMin == false)
            {
                discardMin = true
            }
        }
        
        // Returns a single random stat
        return sum
    }
    
    // Returns ability modifier based on given stat
    func getAbilityModifier(abilityScore:Int) -> Int
    {
        return (abilityScore - 10) / 2
    }
    
    // Generation Functions for each part of a character
    func generateName() -> String
    {
        return self.nameList.randomElement()!
    }
    
    func generateAttributes() -> [Int]
    {
        var attributes: [Int] = []
        
        // Generate 6 random attributes
        for i in 0..<6
        {
            attributes.append(rollStat())
        }
        return attributes
    }
    
    func generateWeapon() -> Weapon
    {
        return self.weaponList.randomElement()!
    }
    
    func generateArmor() -> Armor
    {
        return self.armorList.randomElement()!
    }
    
    func generateShield(weapon:Weapon) -> Armor
    {
        if weapon.isOneHanded
        {
            return self.shieldList.randomElement()!
        }
        else
        {
            return self.shieldList[0] // No shield
        }
    }
    
    func generateRace() -> String
    {
        return self.raceList.randomElement()!
    }
    
    func generateAppearanceFeature() -> String
    {
        return self.appearanceFeatureList.randomElement()!
    }
    
    func generateProfession() -> String
    {
        return self.professionList.randomElement()!
    }
    
    func generateCurrentActivity() -> CurrentActivity
    {
        var activity:CurrentActivity = self.currentActivityList.randomElement()!
        activity.randomDetail += activity.detailList.randomElement()!
        return activity
    }
    
    func generateAlignment() -> [String]
    {
        var alignment: [String] = []
        alignment.append(self.alignmentList[randomBetween(min: 0, max: 2)]) //Lawful, Neutral, Chaotic
        alignment.append(self.alignmentList[randomBetween(min: 3, max: 5)]) //Good, Neutral, Evil
        return alignment
    }
    
    func generateTalent() -> String
    {
        return self.talentList.randomElement()!
    }
    
    func generateInteractionTrait() -> String
    {
        return self.interactionTraitList.randomElement()!
    }
    
    func generateMannerism() -> String
    {
        return self.mannerismList.randomElement()!
    }
    
    func generateIdeal(alignmentPair: [String]) -> String
    {
        // Generates ideal based on alignment
        var idealModifier:String = ""
        var choice = randomBetween(min: 0, max: 2)
        var ideal:String = ""
        
        // Ideal is based on first part of alignment
        if choice == 0
        {
            idealModifier = alignmentPair[0]
        }
        // Ideal is based on second part of alignment
        else if choice == 1
        {
            idealModifier = alignmentPair[1]
        }
        // Ideal is not based off alignment
        else if choice == 2
        {
            idealModifier = "Other"
        }
        
        // Generate the ideal based on which alignment was picked
        if idealModifier == "Lawful"
        {
            ideal = self.lawfulIdealList.randomElement()!
        }
        else if idealModifier == "Neutral"
        {
            ideal = self.neutralIdealList.randomElement()!
        }
        else if idealModifier == "Chaotic"
        {
            ideal = self.chaoticIdealList.randomElement()!
        }
        else if idealModifier == "Good"
        {
            ideal = self.goodIdealList.randomElement()!
        }
        else if idealModifier == "Evil"
        {
            ideal = self.evilIdealList.randomElement()!
        }
        else if idealModifier == "Other"
        {
            ideal = self.otherIdealList.randomElement()!
        }
        
        return ideal
    }
    
    func generateBond() -> String
    {
        return self.bondList.randomElement()!
    }
    
    func generateFlaw() -> String
    {
        return self.flawList.randomElement()!
    }
    
    func generateSecret() -> String
    {
        return self.secretList.randomElement()!
    }
    
    // Function to generate a character
    func generateCharacter() -> DnDCharacter
    {
        var randomCharacter:DnDCharacter = DnDCharacter()
        
        // Generate name, stats, and equipment
        randomCharacter.name = self.generateName()
        var attributes:[Int] = self.generateAttributes()
        randomCharacter.stats.strength = attributes[0]
        randomCharacter.stats.dexterity = attributes[1]
        randomCharacter.stats.constitution = attributes[2]
        randomCharacter.stats.intelligence = attributes[3]
        randomCharacter.stats.wisdom = attributes[4]
        randomCharacter.stats.charisma = attributes[5]
        randomCharacter.equipment.weapon = self.generateWeapon()
        
        var armor:Armor = self.generateArmor()
        var requirementNotMet:Bool = true
        
        // Make sure character can wear the armor given their strength
        while requirementNotMet
        {
            if armor.hasStrReq
            {
                if armor.strReq > randomCharacter.stats.strength
                {
                    armor = generateArmor()
                }
                else
                {
                    requirementNotMet = false
                }
            }
            else
            {
                requirementNotMet = false
            }
        }
        
        randomCharacter.equipment.armor = armor
        
        randomCharacter.equipment.shield = self.generateShield(weapon: randomCharacter.equipment.weapon)
        randomCharacter.stats.AC = randomCharacter.getModifiedAC()
        randomCharacter.stats.maxHealth = (10 + randomCharacter.getAbilityModifier(abilityScore: randomCharacter.stats.constitution))
        
        // Generate Features
        randomCharacter.features.race = self.generateRace()
        randomCharacter.features.appearanceFeature = self.generateAppearanceFeature()
        randomCharacter.features.profession = self.generateProfession()
        randomCharacter.features.currentActivity = self.generateCurrentActivity()
        randomCharacter.features.alignment = self.generateAlignment()
        randomCharacter.features.talent = self.generateTalent()
        randomCharacter.features.interactionTrait = self.generateInteractionTrait()
        randomCharacter.features.mannerism = self.generateMannerism()
        randomCharacter.features.ideal = self.generateIdeal(alignmentPair: randomCharacter.features.alignment)
        randomCharacter.features.bond = self.generateBond()
        randomCharacter.features.flaw = self.generateFlaw()
        randomCharacter.features.secret = self.generateSecret()
        
        return randomCharacter
    }
    
}
