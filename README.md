# BG3-Thematic-Items
This is a mod of the video game Baldur's Gate 3 that adds some items themed to each subclass and how I imagine that subclass would play based on its features and its aesthetic. This is a work-in-progress and there are currently a total of 457 items. The mod is split into 5 files, the main file (ThematicItems), the additional file (ThematicItems_Extra), the tutorial chest patch (ThematicItems_Tutorial_Patch), the tutorial chest patch for only scrolls (ThematicItems_Tutorial_Scrolls_Patch) and the vendor patch (ThematicItems_Vendor_Patch).

The main file contains the modded items of the subclasses that are used in the base game while the "extra" file contains the modded items of the subclasses that are used in the modding community. Note that some functionality is reused between different items and so the "extra" file requires the main file in order to function correctly. Note that the "extra" file also does not require the subclass mods themselves and they are capable of standing in the vanilla game. All you'd be missing out on is the experience of playing those mods.

Before delving into which files to download and the load order, you'll want to account for the mod requirements.

# Requirements
**Hard Requirements**: These mods are absolutely required for the mod to function.
- Norbyte Script Extender by Norbyte (https://github.com/Norbyte/bg3se)

**Soft Requirements**: These mods are not required for the mod to function but you might miss out on features in specific items or you might not see certain effects.
- Shivero's VFX Library by Shivero (https://www.nexusmods.com/baldursgate3/mods/3888?tab=files)
- 5e Spells by Celes (https://www.nexusmods.com/baldursgate3/mods/125)

**Recommendations**: These mods are simply nice to have with what themes the mod is using. For now this only includes the modded subclasses.
- 5e Path of the Beast - Barbarian Sublcass by Sumradagnoth (https://www.nexusmods.com/baldursgate3/mods/6404)
- 5e Path of the Giant - Barbarian Sublcass by Sumradagnoth (https://www.nexusmods.com/baldursgate3/mods/8037)
- 5e Path of the Zealot - Barbarian Sublcass by Sumradagnoth (https://www.nexusmods.com/baldursgate3/mods/5587)
- Bard Subclass - College of Eloquence by somesortofnick (https://www.nexusmods.com/baldursgate3/mods/4651)
- Cleric Subclasses - Release by Baltavi (https://www.nexusmods.com/baldursgate3/mods/432)
- Circle of Stars Druid Subclass by havsglimt (https://www.nexusmods.com/baldursgate3/mods/505)
- 5e Arcane Archer - Fighter Subclass by Sumradagnoth (https://www.nexusmods.com/baldursgate3/mods/4769)
- Oath of Conquest Paladin Subclass by havsglimt (https://www.nexusmods.com/baldursgate3/mods/477)
- Rogues Extra by LostSoulMan (https://www.nexusmods.com/baldursgate3/mods/189)
- Sorcerer - Divine Soul (Revised) by pieroerri (https://www.nexusmods.com/baldursgate3/mods/4443)
- Shadow Sorcerer - Subclass by Baaleos (https://www.nexusmods.com/baldursgate3/mods/923)
- Celestial Warlock by FluffyDragon (https://www.nexusmods.com/baldursgate3/mods/1567)
- Hexblade Subclass and New Invocations (Separate Mods) by Feriat111 and Areqa (https://www.nexusmods.com/baldursgate3/mods/1100)
- Expansion Level 13-20 (Configurable) by Celes (https://www.nexusmods.com/baldursgate3/mods/279)

# Patches and Load Order
As previously mentioned, the ThematicItems and ThematicItems_Extra are the main files and contain the meat and bones of the mod with all of the items. By default the items are not present in any location without the patches. This is so that the mod will be compliant with REL. If you want to use REL, DO NOT USE the tutorial chest patch (ThematicItems_Tutorial_Patch) or the vendor patch (ThematicItems_Vendor_Patch). These two patches will put the items in the tutorial chest and assorted vendors respectively and will get removed from the loot list that REL uses as soon as you open the chest or talk to the vendor. The one patch you can use with REL is the tutorial scrolls chest patch (ThematicItems_Tutorial_Scrolls_Patch) because scrolls will not be included if you use https://www.nexusmods.com/baldursgate3/mods/8811. 

Far as load order is concerned, you'll generally want to place this with your other gear mods and below the soft requirements shown above. With regards to the order between the files, ThematicItems wants to go on top, followed by ThematicItems_Extra and then whichever of the three patches that you choose (only choose one).

## Summary
- ThematicItems file is the main file and REQUIRED for all other files. It should go below all soft requirements and hang around where any other gear mods you might have.
- ThematicItems_Extra is not required for any other file and must go below ThematicItems. It does not have any additional mod requirements from ThematcItems.
- Pick ONE of the three patches and put it below both of the above files.
  - ThematicItems_Tutorial_Patch places all items in the tutorial chest. Do not use with REL.
  - ThematicItems_Vendor_Patch places all the items in assorted vendors. Do not use with REL.
  - ThematicItems_Tutorial_Scrolls_Patch places only the scrolls implemented in the mod into the tutorial chest. Okay to use with REL.

_If you want to include the scrolls into REL, this is actually fairly simple to do._

_1. Unpack your RandomizedEquipmentLoot mod_

_2. Go to Public>[REL_ModName]>Stats>Generated>TreasureTable.txt_

_3. Scroll down to the random loot lists section and go to the rarity you want the scroll to be categorized under (called REL\_All\_Uncommon for example)_

_4. Add the scroll names (for example: object category "I_ThematicItems_Scroll_Dessicate",1,0,0,0,0,0,0,0) . This will be present in a table below._

_5. Save the file._

_6. Repackage the mod._

| Spell Name | Loot Object |
| --- | --- |
| Dessicate | object category "I_ThematicItems_Scroll_Dessicate",1,0,0,0,0,0,0,0 |
| Colossify | object category "I_ThematicItems_Scroll_Colossify",1,0,0,0,0,0,0,0 |
| Greater Bear's Endurance | object category "I_ThematicItems_Scroll_BearEndurance",1,0,0,0,0,0,0,0 |
| Greater Bull's Strength | object category "I_ThematicItems_Scroll_BullStrength",1,0,0,0,0,0,0,0 |
| Greater Cat's Grace | object category "I_ThematicItems_Scroll_CatGrace",1,0,0,0,0,0,0,0 |
| Greater Eagle's Splendor | object category "I_ThematicItems_Scroll_EagleSplendor",1,0,0,0,0,0,0,0 |
| Greater Fox's Cunning | object category "I_ThematicItems_Scroll_FoxCunning",1,0,0,0,0,0,0,0 |
| Greater Owl's Wisdom | object category "I_ThematicItems_Scroll_OwlWisdom",1,0,0,0,0,0,0,0 |
| Fire Storm | object category "I_ThematicItems_Scroll_FireStorm",1,0,0,0,0,0,0,0 |

# What is in the Mod?
Currently there are a total of 457 items with each subclass getting 8-9 items. The general goal is that each subclass gets 3 uncommon items, 2 rare items, 2 very rare items and 1 legendary item. This set of items will contain 1 of each headwear, cloak, chestwear, handwear, footwear, amulet, ring and weapon set. Because this skews the mod in favour of armor, I also included 4 sets of thematic weapons that are not associated with any subclass but are instead themed to a kind of creature. I call these arsenals. Currently the completed subclasses and arsenals are as follows:

- Barbarian: Beast, Berserker, Giant, Wildheart, Zealot
- Bard: Eloquence, Lore, Swords, Valor
- Cleric: Forge, Life, Light, Tempest
- Druid: Land, Moon, Spore, Stars
- Fighter: Arcane Archer, Battle Master, Champion, Eldritch Knight
- Monk: Four Elements, Open Hand, Shadow
- Paladin: Ancients, Conquest, Devotion, Vengeance
- Ranger: Beast Master, Gloomstalker, Horizon Walker, Hunter
- Rogue: Arcane Trickster, Assassin, Swashbuckler, Thief
- Sorcerer: Divine Soul, Draconic, Shadow Magic, Storm
- Warlock: Celestial, Fiend, Great Old One, Hexblade
- Wizard: Bladesinger, Conjuration, Evocation, Transmutation
- Arsenal: Beast, Dragon, Fiend, Giant

Overall the number of items can be summarized in the two tables below:

| Armor Piece | Uncommon | Rare | Very Rare | Legendary |
| --- | --- | --- | --- | --- |
| Headwear | 17 | 16 | 16 | 3 |
| Cloak | 20 | 15 | 15 | 2 |
| Chestwear | 11 | 16 | 16 | 8 |
| Handwear | 24 | 15 | 10 | 3 |
| Footwear | 24 | 15 | 10 | 3 |
| Amulet | 17 | 11 | 16 | 4 |
| Ring | 23 | 6 | 11 | 8 |
| **Total** | **136** | **94** | **94** | **31** |

| Weapons | Uncommon | Rare | Very Rare | Legendary |
| --- | --- | --- | --- | --- |
| 2H | 6 | 4 | 3 | 10 |
| 1H | 13 | 11 | 11 | 14 |
| Ranged | 4 | 2 | 2 | 5 |
| Staff | 4 | 1 | 0 | 3 |
| Shield | 0 | 2 | 4 | 3 |
| **Total** | **27** | **20** | **20** | **35** |

# TO-DO
- Implement custom icons.
- Other subclasses.
- Other arsenals.
- Write out design documents for each subclass.
- Document known issues.
