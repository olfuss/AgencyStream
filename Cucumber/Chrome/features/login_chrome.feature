Feature: Login

	Scenario: User logs into AgencyStream
		Given Chrome is directed to AgencyStream
		And the user enters valid login information
		Then the user will be directed to the AS Dashboard
		Then clean up