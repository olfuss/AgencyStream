Feature: OpenBrowserChrome

	Scenario: Open Chrome Browser 
		Given the Chrome browser is opened
		And directed to AgencyStream
		Then AgencyStream login page should be present 
