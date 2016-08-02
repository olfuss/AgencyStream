Feature: Create New Quote
	
	Scenario: The user creates a new auto quote
		Given the user is logged into AgencyStream
		And clicks the create new quote button
		Then the type/zip popup should open
		And the user selects the type and enters the zip code on the popup
		And clicks start quote
		Then the privacy warning popup should open
		And the user clicks ok on the privacy popup
		And fills out all information on the drivers tab
		Then clicks continue
		And enters information for one minor violation
		Then clicks continue
		And fills out all information on the vehicles tab
		Then clicks continue
		And fills out all information on the underwriting tab
		Then clicks continue
		And fills out all information on the coveraged tab
		Then clicks the drivers tab
		And verifies information entered is all there
		Then clicks the violations tab
		And verifies information entered is all there
		Then clicks the vehicles tab
		And verifies information entered is all there
		Then clicks the underwriting tab
		And verifies information entered is all there
		Then clicks the coverages tab
		And verifies information entered is all there
		Then clicks the quote tab
		And closes the duplicate customer window if it opens
		Then the quote should be run on the quote page
		And the user should see information returned from carriers




