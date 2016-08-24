puts "Enter the Agency ID or Agency Name to search \n"
nameid = gets.chomp

#Stanger
	if nameid == "Stanger" or nameid == "stanger" 
	 	then puts "Agency ID is 34540 \n Or \n Agency ID is 94529"
	elsif nameid == "34540" or nameid == "94529"
	 	then puts "Agency name is Stanger Insurance"
	end	
#Garner Jensen
	if nameid == "Garner" or nameid == "Garner Jensen" or nameid == "garner" or nameid == "garner jensen"
		then puts "Agency ID is 34574"
	elsif nameid == "34574"
		then puts "Agency Name is Garner Jensen Insurance"
	end
#Ken Donaldson
	if nameid == "Ken Donaldson" or nameid == "ken donaldson"
		then puts "Agency ID is 94534"
	elsif nameid == "94534"
		then puts "Agency name is Ken Donaldson Insurance"
	end
#Deseret Insurance
	if nameid == "Deseret" or nameid == "deseret"
		then puts "Agency ID is 34482"
	elsif nameid == "34482"
		then puts "Agency name is Deseret Insurance"
	end
#Quomation
	if nameid == "Quomation" or nameid == "quomation" or nameid == "Test" or nameid == "test" or nameid == "QA" or nameid == "qa"
		then puts "Agency ID is 99999 \n Or\n 65789"
	elsif nameid == "99999" or nameid == "65789"
		then puts "Agency name is Quomation"
	end
#GoodSam agencystream
	if nameid == "GoodSam" or nameid == "goodsam" or nameid == "Good Sam" or nameid == "good sam"
		then puts "No useful credentials have been stored for this company."
	end

#Schroader Blackley
	if nameid == "schroader blackley" or nameid == "schroader" or nameid == "Schroader Blackley" or nameid == "Schroader"
		then puts "Agency ID is 34462"
	elsif nameid == "34462"
		then puts "Agency name is Schroader Blackley"
	end

puts "Exit with ENTER"
gets 