Feature: InvalidLogin

	Scenario: User enters invalid login information
		Given the user enters invalid login information
		And tries to login
		Then an error will generate on the failed login attempt