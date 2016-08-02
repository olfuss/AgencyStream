Feature: Search Auto Quote

	Scenario: The user runs an auto quote search
		Given the user is logged into AgencyStream
		And enters a valid auto quote ID into the search field
		And clicks the search button
		Then the browser will direct to the search results page