Feature: Create New Quote 4x4
	
	Scenario: The user creates a new auto quote
		Given the user is logged into AgencyStream
		And clicks the create new quote button
		Then the type/zip popup should open
		And the user selects the type Auto and enters the zip code on the popup
		And clicks start quote
		Then the privacy warning popup should open
		And the user clicks ok on the privacy popup
		And fills out all information on the driver 1 tab
		And fills out all information on the driver 2 tab
		And fills out all information on the driver 3 tab
		And fills out all information on the driver 4 tab
		Then fills out mailing information
		Then clicks continue
		And enters information for one minor violation
		Then clicks continue
		And fills out all information on the vehicle 1 tab
		And fills out all information on the vehicle 2 tab
		And fills out all information on the vehicle 3 tab
		And fills out all information on the vehicle 4 tab
		Then clicks continue
		And fills out all information on the underwriting tab
		Then clicks continue
		And fills out all information on the coveraged tab
		Then clicks the quote tab
		And the user should see information returned from carriers
		Then gets quoteid
		Then clean up




