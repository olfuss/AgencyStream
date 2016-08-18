Feature: Search Home Quote

	Scenario: The user runs an home quote search
		Given the user is logged into AgencyStream
		And enters a valid home quote ID into the search field
		And clicks the search button
		Then the browser will direct to the search results page