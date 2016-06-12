--Add our own sounds
function DeathSounds(victim, weapon, killer)

	local model = victim:GetModel()
	local maxrand = 0
	local soundrand = math.random(1,59) --Change this 59 to the largest number in your sounds folder Ex. death68.wav would be local soundrand = math.random(1,68)
	local sound = "deathsound/death" .. soundrand .. ".wav"
	
	util.PrecacheSound(sound)
	victim:EmitSound(sound, 72, 100)
end
hook.Add( "PlayerDeath", "DeathSoundsHook", DeathSounds )

--Remove the annoying flatline noise
function RemoveFlatline()
return true
end
hook.Add( "PlayerDeathSound", "RemoveFlatlineSound", RemoveFlatline )
