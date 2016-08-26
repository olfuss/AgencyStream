require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 120)

quote1 = 1061943424
quote2 = 1666178345
quote3 = 901695744
quote4 = 1267405152
quote5 = 1130485888
quote6 = 1456779837
quote7 = 1666178345
quote8 = 1061943424
quote9 = 901695744
quote10 = 977019776
HQ = "https://test.quomation.com/HomeQuote.aspx?qid="
AQ = "https://test.quomation.com/AutoQuote.aspx?qid="
i=1
loop do 
	i+=1
#Quote1		
	driver1 = Selenium::WebDriver.for :firefox
		print("Driver 1 Iteration #{i-1} Started \n")
		driver1.navigate.to "https://test.quomation.com/login.aspx"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver1.navigate.to "#{HQ}#{quote1}"
	sleep(5)
		element = driver1.find_element(:id, 'tQuote').send_keys(:control, '7')
			driver2 = wait.until {
			element = driver1.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote2
	driver2 = Selenium::WebDriver.for :firefox
		print("Driver 2 Iteration #{i-1} Started \n")
		driver2.navigate.to "https://test.quomation.com/login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver2.navigate.to "#{HQ}#{quote2}"
	sleep(5)
		element = driver2.find_element(:id, 'tQuote').send_keys(:control, '7')
		driver3 = wait.until {
			element = driver2.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#quote3
	driver3 = Selenium::WebDriver.for :firefox
		print("Driver 3 Iteration #{i-1} Started \n")
		driver3.navigate.to "https://test.quomation.com/login.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver3.navigate.to "#{AQ}#{quote3}"
	sleep(5)
		element = driver3.find_element(:id, 'tQuote').send_keys(:control, '6')
		driver4 = wait.until {
			element = driver1.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote4
	driver4 = Selenium::WebDriver.for :firefox
		print("Driver 4 Iteration #{i-1} Started \n")
		driver4.navigate.to "https://test.quomation.com/login.aspx"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver4.navigate.to "#{AQ}#{quote4}"
	sleep(5)
		element = driver4.find_element(:id, 'tQuote').send_keys(:control, '6')
		driver5 = wait.until {
			element = driver1.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote5
	driver5 = Selenium::WebDriver.for :firefox
		print("Driver 5 Iteration #{i-1} Started \n")
		driver5.navigate.to "https://test.quomation.com/login.aspx"
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver5.navigate.to "#{AQ}#{quote5}"
	sleep(5)
		element = driver5.find_element(:id, 'tQuote').send_keys(:control, '6')
		driver6 = wait.until {
			element = driver1.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote6
	driver6 = Selenium::WebDriver.for :firefox
		print("Driver 6 Iteration #{i-1} Started \n")
		driver6.navigate.to "https://test.quomation.com/login.aspx"
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver6.navigate.to "#{AQ}#{quote6}"
	sleep(5)
		element = driver6.find_element(:id, 'tQuote').send_keys(:control, '6')
		driver7 = wait.until {
			element = driver1.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote7
	driver7 = Selenium::WebDriver.for :firefox
		print("Driver 7 Iteration #{i-1} Started \n")
		driver7.navigate.to "https://test.quomation.com/login.aspx"
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver7.navigate.to "#{HQ}#{quote7}"
	sleep(5)
		element = driver7.find_element(:id, 'tQuote').send_keys(:control, '7')
		driver8 = wait.until {
			element = driver7.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote8
	driver8 = Selenium::WebDriver.for :firefox
		print("Driver 8 Iteration #{i-1} Started \n")
		driver8.navigate.to "https://test.quomation.com/login.aspx"
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver8.navigate.to "#{HQ}#{quote8}"
	sleep(5)
		element = driver8.find_element(:id, 'tQuote').send_keys(:control, '7')
		driver9 = wait.until {
			element = driver8.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote9
	driver9 = Selenium::WebDriver.for :firefox
		print("Driver 9 Iteration #{i-1} Started \n")
		driver9.navigate.to "https://test.quomation.com/login.aspx"
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver9.navigate.to "#{AQ}#{quote9}"
	sleep(5)
		element = driver9.find_element(:id, 'tQuote').send_keys(:control, '6')
		driver10 = wait.until {
			element = driver9.find_element(:id, 'btnQuote0')
			element if element.displayed?
		}
#Quote10
	driver10 = Selenium::WebDriver.for :firefox
		print("Driver 10 Iteration #{i-1} Started \n")
		driver10.navigate.to "https://test.quomation.com/login.aspx"
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson1010")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
				driver10.navigate.to "#{AQ}#{quote10}"
	sleep(8)
		element = driver10.find_element(:id, 'tQuote').send_keys(:control, '6')
		#driver1 = wait.until {
		#	element = driver10.find_element(:id, 'btnQuote0')
		#	element if element.displayed?
		#}
end