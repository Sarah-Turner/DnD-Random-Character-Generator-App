//
//  DnDCharacter.swift
//  DnD Random Character Generator
//
//  Created by Sarah Turner on 11/11/24.
//

struct Weapon
{
    var name:String
    var dmgDice:Int
    var numDice:Int
    var useDex:Bool
    var isOneHanded:Bool
    var attackText:String
    var criticalHitText:String
    var hitText:String
    var missText:String
    var criticalMissText:String
    
    init()
    {
        self.name = "Mace"
        self.dmgDice = 6
        self.numDice = 1
        self.useDex = false
        self.isOneHanded = true
        self.attackText = " swings a mace... "
        self.criticalHitText = " deals a devastating blow with their mace! "
        self.hitText = " lands a solid hit. "
        self.missText = "'s mace glances off thier opponent. "
        self.criticalMissText = " stumbles and misses completely! "
    }
}

struct Armor
{
    var name:String
    var AC:Int
    var useDexMod:Bool
    var dexModIsCapped:Bool
    var hasStrReq:Bool
    var strReq:Int
    var hasStealthDis:Bool
    
    init()
    {
        self.name = "Chain Shirt"
        self.AC = 13
        self.useDexMod = true
        self.dexModIsCapped = true // Dex mod caps at 2
        self.hasStrReq = false
        self.strReq = 0
        self.hasStealthDis = false
    }
}

struct Stats
{
    var maxHealth: Int
    var AC: Int
    var strength: Int
    var dexterity: Int
    var constitution: Int
    var intelligence: Int
    var wisdom: Int
    var charisma: Int
    
    init()
    {
        self.maxHealth = 0
        self.AC = 0
        self.strength = 0
        self.dexterity = 0
        self.constitution = 0
        self.intelligence = 0
        self.wisdom = 0
        self.charisma = 0
    }
}

struct Equipment
{
    var weapon: Weapon
    var armor: Armor
    var shield: Armor
    
    init()
    {
        self.weapon = Weapon()
        self.armor = Armor()
        self.shield = Armor()
    }
}

struct CurrentActivity
{
    var currentActivity: String  // One word description
    var description: String      // Sentence description
    var randomDetail: String     // Random Detail is appended to description
    var detailList: [String]     // 7 Details one is selected for randomDetail
    
    init()
    {
        currentActivity = ""
        description = ""
        randomDetail = ""
        detailList = []
    }
}

struct Features
{
    var race: String
    var appearanceFeature: String
    var profession: String
    var currentActivity: CurrentActivity
    var alignment: [String]                // First value is Lawful, Neutral, or Chaotic. Second value is Good, Neutral, or Evil
    var talent: String
    var interactionTrait: String
    var mannerism: String
    var ideal: String
    var bond: String
    var flaw: String
    var secret: String
    
    init()
    {
        self.race = ""
        self.appearanceFeature = ""
        self.profession = ""
        self.currentActivity = CurrentActivity()
        self.alignment = ["", ""]
        self.talent = ""
        self.interactionTrait = ""
        self.mannerism = ""
        self.ideal = ""
        self.bond = ""
        self.flaw = ""
        self.secret = ""
    }
}

class DnDCharacter
{
    var name: String
    var stats: Stats
    var equipment: Equipment
    var features: Features
    
    init()
    {
        self.name = ""
        self.stats = Stats()
        self.equipment = Equipment()
        self.features = Features()
    }
    
    // Returns ability modifier based on given stat
    func getAbilityModifier(abilityScore:Int) -> Int
    {
        return (abilityScore - 10) / 2
    }
    
    // Calculates AC using armor and dex modifiers
    func getModifiedAC() -> Int
    {
        var modifiedAC: Int = self.equipment.armor.AC + self.equipment.shield.AC
        
        // Dex mod capped at 2
        if (self.equipment.armor.dexModIsCapped)
        {
            if (getAbilityModifier(abilityScore: self.stats.dexterity) > 2)
            {
                modifiedAC += 2
            }
            else
            {
                modifiedAC += getAbilityModifier(abilityScore: self.stats.dexterity)
            }
        }
        // Dex mod is uncapped
        else
        {
            modifiedAC += getAbilityModifier(abilityScore: self.stats.dexterity)
        }
        
        return modifiedAC
    }
    
    
    
    
    
    
}
