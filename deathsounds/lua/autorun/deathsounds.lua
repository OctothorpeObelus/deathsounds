--Add your own sounds in sound/deathsounds
function DeathSounds(victim, weapon, killer)
	local maxrand = 0 --Change this 59 to the largest number in your sounds folder Ex. death68.wav would be 68
	local soundrand = math.random(1,maxrand)
	local sound = "deathsound/death" .. soundrand .. ".wav" --Replace .wav with .mp3 or .ogg depending.
	
	util.PrecacheSound(sound)
	victim:EmitSound(sound, 72, 100)
end
hook.Add( "PlayerDeath", "DeathSoundsHook", DeathSounds )

-- Don't change anything down here
function RemoveFlatline()
return true
end
hook.Add( "PlayerDeathSound", "RemoveFlatlineSound", RemoveFlatline )
