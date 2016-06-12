--Add our own sounds
function DeathSounds(victim, weapon, killer)

	local model = victim:GetModel()
	local maxrand = 0
	local soundrand = math.random(3,59)
	local suffix = ".wav"
	local sound = "deathsound/death" .. soundrand .. suffix
	
	if soundrand < 15 then
		suffix = ".wav"
	elseif soundrand > 14 and soundrand < 17 then
		suffix = ".mp3"
	elseif soundrand == 17 then
		suffix = ".wav"
	elseif soundrand > 17 and soundrand < 40 then
		suffix = ".mp3"
	elseif soundrand > 39 and soundrand < 48 then
		suffix = ".wav"
	elseif soundrand > 48 then
		suffix = ".mp3"
	end
	local sound = "deathsound/death" .. soundrand .. suffix
	util.PrecacheSound(sound)
	victim:EmitSound(sound, 72, 100)
end
hook.Add( "PlayerDeath", "DeathSoundsHook", DeathSounds )

--Remove the annoying flatline noise
function RemoveFlatline()
return true
end
hook.Add( "PlayerDeathSound", "RemoveFlatlineSound", RemoveFlatline )