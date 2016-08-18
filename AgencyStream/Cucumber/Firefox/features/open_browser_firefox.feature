Feature: OpenBrowserFF

	Scenario: Open Firefox Browser 
		Given the Firefox browser is opened
		And Firefox is directed to AgencyStream
		Then AgencyStream login page should be present on Firefox 
