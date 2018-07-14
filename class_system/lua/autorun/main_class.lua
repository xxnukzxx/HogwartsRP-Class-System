if SERVER then
util.AddNetworkString( "DoSchoolBell" )
end
hook.Add( "HUDPaint", "MyTimerText2", function()
	surface.SetFont( "hogwarts" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 50, 325 )
	surface.DrawText( finalhouse2 .. ": " .. class2 .. " | " .. room2 )
end )
hook.Add( "HUDPaint", "MyTimerText", function()
	surface.SetDrawColor( 0, 0, 0, 250 )
	surface.DrawOutlinedRect( 25, 200, 500, 200 )
	surface.SetFont( "hogwarts" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 50, 275 )
	surface.DrawText( finalhouse .. ": " .. class1 .. " | " .. room1 )
end )
hook.Add( "HUDPaint", "Countdown", function()
	surface.SetFont( "hogwarts" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 180, 210 )
	surface.DrawText( math.Round( timer.TimeLeft("ClassTimer") ) )
end )
hook.Add( "HUDPaint", "SecondsLeft", function()
	surface.SetFont( "hogwarts" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 212, 210 )
	surface.DrawText( " Seconds Until Next Class")
end )
hook.Add( "HUDPaint", "MyRect", function()
	surface.SetDrawColor( 0, 0, 0, 100 )
	surface.DrawRect( 25, 200, 500, 200 )
end )
hook.Add( "HUDPaint", "MainText", function()
	surface.SetFont( "hogwarts" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( 50, 210 )
	surface.DrawText( "Hogwarts Classes; ")
end )

houses1 = { "combo11", "combo12", "combo13", "combo14" }
c1 = { "Class 2", "Class 3" }
c2 = { "Class 1", "Class 4" }

cwa = { "Charms", "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Herbology", "Astronomy", "Potions", "Quidditch", "Free Time", "Great Hall", "Lock Down" }
cwocharms = { "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Herbology", "Astronomy", "Potions" }
cwowizardry = { "Charms", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Herbology", "Astronomy", "Potions" }
cwomuggle = { "Charms", "Wizardry", "DADA", "Transfiguration", "History of Magic", "Herbology", "Astronomy", "Potions"  }
cwodada = { "Charms", "Wizardry", "Muggle Studies", "Transfiguration", "History of Magic", "Herbology", "Astronomy", "Potions" }
cwotrans = { "Charms", "Wizardry", "Muggle Studies", "DADA", "History of Magic", "Herbology", "Astronomy", "Potions" }
cwohistory = { "Charms", "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "Herbology", "Astronomy", "Potions" }
cwoherb = { "Charms", "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Astronomy", "Potions" }
cwoastro = { "Charms", "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Herbology", "Potions" }
cwopotions = { "Charms", "Wizardry", "Muggle Studies", "DADA", "Transfiguration", "History of Magic", "Herbology", "Astronomy" }
combo11 = { "Gryffindor + Ravenclaw", "Gryffindor + Slytherin", "Gryffindor + Hufflepuff" }
combo12 = { "Ravenclaw + Gryffindor", "Ravenclaw + Hufflepuff", "Ravenclaw + Slytherin" }
combo13 = { "Slytherin + Gryffindor", "Slytherin + Hufflepuff", "Slytherin + Ravenclaw" }
combo14 = { "Hufflepuff + Gryffindor", "Hufflepuff + Ravenclaw", "Hufflepuff + Slytherin" }
finalhouse = "Loading"
finalhouse2 = "Loading"
class1 = "Loading"
class2 = "Loading"
room1 = "Loading"
room2 = "Loading"

hook.Add("InitPostEntity", "ClassTimerCreate", function()
if ( timer.Exists( "ClassTimer" ) ) then

	-- The timer exists
	print( "Class Timer Exists Already" )
	
else
	-- The timer doesn't exist
	print( "Creating Class Timer" )

	timer.Create("ClassTimer", 525, 0, function()
	
	RunConsoleCommand( "newclass" )
	end )

	-- Create a timer
		timer.Create( "HousePick2", 0.06, 1, function()
	if class2 == "Charms" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Wizardry" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Muggle Studies" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "DADA" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Transfiguration" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "History of Magic" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Herbology" then
		room2 = "Herbology"
	end
	if class2 == "Astronomy" then
		room2 = "Astronomy"
	end
	if class2 == "Potions" then
		room2 = "Potions"
	end
	end )
	timer.Create( "HousePick1", 0.05, 1, function()
	house1 = houses1[ math.random( #houses1 ) ]
	class1 = cwa[ math.random( #cwa ) ]
	if class1 == "Herbology" then
		room1 = "Herbology"
		class2 = cwoherb[ math.random( #cwoherb ) ]
	end
	if class1 == "Astronomy" then
		room1 = "Astronomy"
		class2 = cwoastro[ math.random( #cwoastro ) ]
	end
	if class1 == "Potions" then
		room1 = "Potions"
		class2 = cwopotions[ math.random( #cwopotions ) ]
	end
	if class1 == "Quidditch" then
		room1 = "Quidditch"
		room2 = "Quidditch"
		class2 = "Quidditch"
	end
	if class1 == "Free Time" then
		room1 = "N/A"
		room2 = "N/A"
		class2 = "Free Time"
	end
	if class1 == "Great Hall" then
		room1 = "Great Hall"
		room2 = "Great Hall"
		class2 = "Great Hall"
	end
	if class1 == "Lock Down" then
		room1 = "Return to Dorms"
		room2 = "Return to Dorms"
		class2 = "Lock Down"
	end
	if class1 == "Charms" then
		class2 = cwocharms[ math.random( #cwocharms ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Wizardry" then
		class2 = cwowizardry[ math.random( #cwowizardry ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Muggle Studies" then
		class2 = cwomuggle[ math.random( #cwomuggle ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "DADA" then
		class2 = cwodada[ math.random( #cwodada ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Transfiguration" then
		class2 = cwotrans[ math.random( #cwotrans ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "History of Magic" then
		class2 = cwohistory[ math.random( #cwohistory ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if house1 == "combo11" then
		finalhouse = combo11[ math.random( #combo11 ) ]
	end
	if house1 == "combo12" then
		finalhouse = combo12[ math.random( #combo12 ) ]
	end
	if house1 == "combo13" then
		finalhouse = combo13[ math.random( #combo13 ) ]
	end
	if house1 == "combo14" then
		finalhouse = combo14[ math.random( #combo14 ) ]
	end
	if finalhouse == "Gryffindor + Ravenclaw" then
		finalhouse2 = "Slytherin + Hufflepuff"
	end
	if finalhouse == "Gryffindor + Slytherin" then
		finalhouse2 = "Ravenclaw + Hufflepuff"
	end
	if finalhouse == "Gryffindor + Hufflepuff" then
		finalhouse2 = "Slytherin + Ravenclaw"
	end
	if finalhouse == "Ravenclaw + Gryffindor" then
		finalhouse2 = "Hufflepuff + Slytherin"
	end
	if finalhouse == "Ravenclaw + Slytherin" then
		finalhouse2 = "Hufflepuff + Gryffindor"
	end
	if finalhouse == "Ravenclaw + Hufflepuff" then
		finalhouse2 = "Gryffindor + Slytherin"
	end
	if finalhouse == "Slytherin + Gryffindor" then
		finalhouse2 = "Hufflepuff + Ravenclaw"
	end
	if finalhouse == "Slytherin + Ravenclaw" then
		finalhouse2 = "Hufflepuff + Gryffindor"
	end
	if finalhouse == "Slytherin + Hufflepuff" then
		finalhouse2 = "Gryffindor + Ravenclaw"
	end
	if finalhouse == "Hufflepuff + Gryffindor" then
		finalhouse2 = "Slytherin + Ravenclaw"
	end
	if finalhouse == "Hufflepuff + Ravenclaw" then
		finalhouse2 = "Slytherin + Gryffindor"
	end
	if finalhouse == "Hufflepuff + Slytherin" then
		finalhouse2 = "Gryffindor + Ravenclaw"
	end
	end )
end

end ) 

concommand.Add( "newclass", function( cmd, ply, args )
	timer.Create("ClassTimer", 0.01, 0, function()
	end )
	timer.Create("ClassTimer", 525, 0, function()
	RunConsoleCommand( "newclass" )
	end )
	if CLIENT then
		surface.PlaySound( "school_bell.wav" )
	end
	timer.Create( "HousePick2", 0.06, 1, function()
	if class2 == "Charms" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Wizardry" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Muggle Studies" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "DADA" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Transfiguration" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "History of Magic" then
		room2 = c1[ math.random( #c1 ) ]
	end
	if class2 == "Herbology" then
		room2 = "Herbology"
	end
	if class2 == "Astronomy" then
		room2 = "Astronomy"
	end
	if class2 == "Potions" then
		room2 = "Potions"
	end
	end )
	timer.Create( "HousePick1", 0.05, 1, function()
	
	house1 = houses1[ math.random( #houses1 ) ]
	class1 = cwa[ math.random( #cwa ) ]
	if class1 == "Herbology" then
		room1 = "Herbology"
		class2 = cwoherb[ math.random( #cwoherb ) ]
	end
	if class1 == "Astronomy" then
		room1 = "Astronomy"
		class2 = cwoastro[ math.random( #cwoastro ) ]
	end
	if class1 == "Potions" then
		room1 = "Potions"
		class2 = cwopotions[ math.random( #cwopotions ) ]
	end
	if class1 == "Quidditch" then
		room1 = "Quidditch"
		room2 = "Quidditch"
		class2 = "Quidditch"
	end
	if class1 == "Free Time" then
		room1 = "N/A"
		room2 = "N/A"
		class2 = "Free Time"
	end
	if class1 == "Great Hall" then
		room1 = "Great Hall"
		room2 = "Great Hall"
		class2 = "Great Hall"
	end
	if class1 == "Lock Down" then
		room1 = "Return to Dorms"
		room2 = "Return to Dorms"
		class2 = "Lock Down"
	end
	if class1 == "Charms" then
		class2 = cwocharms[ math.random( #cwocharms ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Wizardry" then
		class2 = cwowizardry[ math.random( #cwowizardry ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Muggle Studies" then
		class2 = cwomuggle[ math.random( #cwomuggle ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "DADA" then
		class2 = cwodada[ math.random( #cwodada ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "Transfiguration" then
		class2 = cwotrans[ math.random( #cwotrans ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if class1 == "History of Magic" then
		class2 = cwohistory[ math.random( #cwohistory ) ]
		room1 = c2[ math.random( #c2 ) ]
	end
	if house1 == "combo11" then
		finalhouse = combo11[ math.random( #combo11 ) ]
	end
	if house1 == "combo12" then
		finalhouse = combo12[ math.random( #combo12 ) ]
	end
	if house1 == "combo13" then
		finalhouse = combo13[ math.random( #combo13 ) ]
	end
	if house1 == "combo14" then
		finalhouse = combo14[ math.random( #combo14 ) ]
	end
	if finalhouse == "Gryffindor + Ravenclaw" then
		finalhouse2 = "Slytherin + Hufflepuff"
	end
	if finalhouse == "Gryffindor + Slytherin" then
		finalhouse2 = "Ravenclaw + Hufflepuff"
	end
	if finalhouse == "Gryffindor + Hufflepuff" then
		finalhouse2 = "Slytherin + Ravenclaw"
	end
	if finalhouse == "Ravenclaw + Gryffindor" then
		finalhouse2 = "Hufflepuff + Slytherin"
	end
	if finalhouse == "Ravenclaw + Slytherin" then
		finalhouse2 = "Hufflepuff + Gryffindor"
	end
	if finalhouse == "Ravenclaw + Hufflepuff" then
		finalhouse2 = "Gryffindor + Slytherin"
	end
	if finalhouse == "Slytherin + Gryffindor" then
		finalhouse2 = "Hufflepuff + Ravenclaw"
	end
	if finalhouse == "Slytherin + Ravenclaw" then
		finalhouse2 = "Hufflepuff + Gryffindor"
	end
	if finalhouse == "Slytherin + Hufflepuff" then
		finalhouse2 = "Gryffindor + Ravenclaw"
	end
	if finalhouse == "Hufflepuff + Gryffindor" then
		finalhouse2 = "Slytherin + Ravenclaw"
	end
	if finalhouse == "Hufflepuff + Ravenclaw" then
		finalhouse2 = "Slytherin + Gryffindor"
	end
	if finalhouse == "Hufflepuff + Slytherin" then
		finalhouse2 = "Gryffindor + Ravenclaw"
	end
	end )
end )