Thanks for trying out this mod helper, any feedback or suggestions 
are much appreciated, feel free to leave a post with anything you
want to see implemented or have figured out. I hope to build more
comprehensive lists of how to use keywords and add more features 
where possible.



Step by step instructions for each function



Setup
-----------------------------

You need to take the ModName folder and place it somewhere, it is your working root folder
this can be ignored if you already have a mod you are working on, its just a template I threw
up for people who are completly new.

1. Change ModName to whatever you want to call your mod anywhere you find it, look at every file name in there
2. Open the meta.lsx file and change the commented lines to the appropriate info.



Armor Generator
-----------------------------

1. Armor Name - Must be unique within your mod, i.e. no two armors may be named the same, 
however this is only within your mod, if other mods or the base game share names it is fine.

2. Description - It will be the text at the bottom of the item, any effects that are not visable
on your item should most likely go here to help players understand the effects.

3. Template ID - This is the template or parent object that we are basing the item off of, 
this has a few impacts on the end item, but the main thing to consider is the model of the item
currently I've not set up custom models. 
	3a. In order to find an ID, browse the wiki or find an item whose looks you want.
	3b. Then use the itemList.txt inside the Lists folder to lookup the ID.
	ex. if you wanted it to be a short sword that looks like the Executioner Sword, ctrl+F
	to find '"3fab682c-abc7-43f0-b9bb-9faa9f612d8d",--MAG_FreeCast_Shortsword (Executioner Sword)'
	3c. Put the id, in this case 3fab682c-abc7-43f0-b9bb-9faa9f612d8d into the Template ID section

4. For weapons you can add a list of Boosts, Passives, or Statuses to be awarded when worn.
	4a. To add one you need to click the dropdown to the left and select which type you are adding.
	4b. Then type the full bonus into the text box on the right, i.e. AC(1) is a Boost of +1 AC
	4c. Add will add the bonus to the selected bonus type, select one and the delete button will do the opposite
	4d. Repeat with any bonuses you wish, Known Boosts is the most comprehensive list for boosts, the other two 
	you can find examples of in the statusList and passiveList, status/passive helper is coming soon.

5. Value/Weight is self explanitory

6. AC is only if its a shield or armor piece, when making say, a +1 armor or shield, it is better to manually do it here than
by adding a +1 AC boost, as it will directly show up inside the AC shield icon, whereas the boost version wont.

7. Rarity is simple

8. This is the item type dropdown, TRY to pick the closest item to what you are trying to make, 
if you are making a modified scale mail, pick ARM_ScaleMail_BODY, as it will pass down the dex AC scaling with a +2 cap.
Adding the ability to modify the AC scaling soon, until then you would have to manually add it to the item. 

9. Item location is a simple one, you can choose any inventory in the game, or multiple, just do 1;2;3;4;5 where 1-5
are the inventory id's. TUT_Chest_Potions is the chest that many mods add items to on the tutorial ship.

10. Mod Root Folder is what it sounds like, also keep in mind that the mod name SHOULD match the root folder name
it probably would still work otherwise, but some of it assumes as much and it might cause some issues.

11. Add to mod is the submit buttion and just pushes the changes to the proper files.

12. Generate was a small test, currently the items are truely random and pretty much unplayable, looking to 
improve that so that some mass creation of simpler magic items can give vendors a more varied inventory.



Weapon Generator
----------------------------

It is basically the same as armor except for a few small changes.

1. Boosts is the same as the armor Boosts, and they should all work interchangeably, it is NOT the same
as DefaultBoosts, until I have a more comprehensive list of weapon boosts, go look at a few examples in 
the Lists folder inside weaponVanilla. 
	1b. Mainhand vs Offhand Boosts should work with armor Boosts just conditional on how you hold the weapon.
	1c. WeaponFunctors are a very dynamic part that I want to mess with a lot, as it seems you can do all sorts of conditional
	effects, i.e. If(HasDamageEffectFlag(DamageFlags.Hit) and IsCritical()):DealDamage(2d4,Force), side note there is 
	a CastSpell() effect that could potentially go here to make some VERY intresting items, this is a bit more complex 
	and I hope if anyone figures out how to effectively use WeaponFunctors well they share a bit about it.

2. Damage is a field in place of AC, you can just do 1d12 or other dice notation here. (Versatile weapons need another box, on the todo page)

3. Damage type changes the weapons main dice to whatever damage type, dosnt change any damage bonuses you add through boosts.



Spell Generator
----------------------------

This one is honestly a bit bare bones without a proper list of modifiers, best bet is to find a spell you want to 
modify and find some examples of keywords you want to try from the Ugly List folder, Cooldown, MemoryCost, and ActionCost
are most likely the main things you will modify to tack spells onto items. I want to get a Confirmed Boost style list 
for spells soon.

1. Spell type is important, but since you'll be modifying spells, just make sure it matches with the original spell.

2. Name once again must be unique within the mod, but can be the same as an actual spell, need to modify this so that we can have overlap.

3. Base Spell is just whatever you are modifying, spellList has you covered, i.e. "Projectile_AcidArrow",--Melf's Acid Arrow,
we will put in Projectile_AcidArrow to the box.

4. Root folder once again is the same.

5. Keyword and Value are a pair, this is a much more freeform section of the tool, and you will need to find the keyword you want yourself
	5a. This basically comes down to finding an example and copying it, i.e "keyword: Cooldown" "value: OncePerRestPerItem" will make a spell once per long rest
	5b. Poke around in the Spell_[type].txt appropriate to your use case and see if you can find what you need, things like
		data "SpellSuccess" "DealDamage(8d6,Poison)"
		data "SpellFail" "DealDamage((8d6)/2,Poison)"

6. After adding to mod, the internal spell name will be shown in the bottom text box, this is so that you may modify a spell then copy the new name for 
use in a new item or armor right away with that new spell.



Post Creation
----------------------------

When you are done adding items or want to test them in game, you will need to go and package the mod back up into a .pak file. 
This process uses the LSLib tool by Norbyte, https://github.com/Norbyte/lslib

1. Open up the LSLib tool by running the ConverterApp application.

2. First go to the Localization tab and you must link the input and output files
	2a. The input path should be root\Localization\English\{ModName}.xml
	2b. Output should be root\Localization\English\{ModName}.loca, accept if it asks if you will replace the file
	2c. Click convert.

3. Next goto the LSX/LSB/... tab
	3a. You can use either section, however I use the batch convert to be simple
	3b. Select the input and output to both be root\Public\{ModName}\RootTemplates
	3c. Select input to be LSX(XML), and output to be LSF(binary)
	3d. Click convert

4. Third, go to the PAK/LSV tab, 
	4a. Use the create package section to select your root folder as the source, 
	4b. Create a {ModName}.pak as the package path, this is your output.
	4c. Make sure you have BG3 as the version selection and then create package.

5.	Lastly you can now import the mod to bg3 using BG3 Mod Manager and give it a spin
if you are going to be testing a bunch of items, make a save before looting the tutorial 
chest or get the tutorial test summoning mod for ease of access.