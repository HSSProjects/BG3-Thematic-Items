Debug = false

--- When the user gains the amulet's status and have eldritch blast, unlocks Fire version of Eldritch Blast.
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
	if Osi.HasSpell(character,"Projectile_EldritchBlast") == 1 then
		if	status == "TI_MAG_FLAMES_OF_AVERNUS" then
			Osi.ApplyStatus(character, "TI_MAG_FLAMES_OF_AVERNUS_UNLOCK", -1,1,character)
		end
    end
end)