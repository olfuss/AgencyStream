require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = 1061943424
quote2 = 1666178345
quote3 = 901695744
quote4 = 1267405152
quote5 = 1130485888
quote6 = 1168224512
quote7 = 1002762048
quote8 = 1058327424
quote9 = 1551535872
quote10 = 977019776


i=1
loop do 
	i+=1
#Quote1		
	driver1 = Selenium::WebDriver.for :firefox
		print("Driver 1 Iteration #{i-1} Started \n")
		driver1.navigate.to "https://test.quomation.com/HomeQuote.aspx?qid=#{quote1}"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load = wait.until {
			element = driver1.find_element(:id, 'btnContinue')
			element if element.displayed?
		}
			load.send_keys(:control, '7')
#Quote2
	driver2 = Selenium::WebDriver.for :firefox
		print("Driver 2 Iteration #{i-1} Started \n")
		driver2.navigate.to "https://test.quomation.com/HomeQuote.aspx?qid=#{quote2}"
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element2.send_keys("65789")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element2.send_keys("jwilcox")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element2.send_keys("jw")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load2 = wait.until {
			element2 = driver2.find_element(:id, 'btnContinue')
			element2 if element2.displayed?
		}
			load2.send_keys(:control, '7')
#quote3
	driver3 = Selenium::WebDriver.for :firefox
		print("Driver 3 Iteration #{i-1} Started \n")
		driver3.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote3}"
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element3.send_keys("65789")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element3.send_keys("jwilcox")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element3.send_keys("jw")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load3 = wait.until {
			element3 = driver3.find_element(:id, 'btnContinue')
			element3 if element3.displayed?
		}
			load3.send_keys(:control, '6')
#Quote4
	driver4 = Selenium::WebDriver.for :firefox
		print("Driver 4 Iteration #{i-1} Started \n")
		driver4.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote4}"
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element4.send_keys("65789")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element4.send_keys("jwilcox")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element4.send_keys("jw")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load4 = wait.until {
			element4 = driver4.find_element(:id, 'btnContinue')
			element4 if element4.displayed?
		}
			load4.send_keys(:control, '6')	
#Quote5
	driver5 = Selenium::WebDriver.for :firefox
		print("Driver 5 Iteration #{i-1} Started \n")
		driver5.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote5}"
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element5.send_keys("65789")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element5.send_keys("jwilcox")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element5.send_keys("jw")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load5 = wait.until {
			element5 = driver5.find_element(:id, 'btnContinue')
			element5 if element5.displayed?
		}
			load5.send_keys(:control, '6')	
#Quote6
	driver6 = Selenium::WebDriver.for :firefox
		print("Driver 6 Iteration #{i-1} Started \n")
		driver6.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote6}"
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element6.send_keys("66789")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element6.send_keys("jwilcox")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element6.send_keys("jw")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load6 = wait.until {
			element6 = driver6.find_element(:id, 'btnContinue')
			element6 if element6.displayed?
		}
			load6.send_keys(:control, '6')	
#Quote7
	driver7 = Selenium::WebDriver.for :firefox
		print("Driver 7 Iteration #{i-1} Started \n")
		driver7.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote7}"
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element7.send_keys("77789")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element7.send_keys("jwilcox")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element7.send_keys("jw")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load7 = wait.until {
			element7 = driver7.find_element(:id, 'btnContinue')
			element7 if element7.displayed?
		}
			load7.send_keys(:control, '6')	
#Quote8
	driver8 = Selenium::WebDriver.for :firefox
		print("Driver 8 Iteration #{i-1} Started \n")
		driver8.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote8}"
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element8.send_keys("88889")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element8.send_keys("jwilcox")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element8.send_keys("jw")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load8 = wait.until {
			element8 = driver8.find_element(:id, 'btnContinue')
			element8 if element8.displayed?
		}
			load8.send_keys(:control, '6')	
#Quote9
	driver9 = Selenium::WebDriver.for :firefox
		print("Driver 9 Iteration #{i-1} Started \n")
		driver9.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote9}"
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element9.send_keys("99989")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element9.send_keys("jwilcox")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element9.send_keys("jw")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load9 = wait.until {
			element9 = driver9.find_element(:id, 'btnContinue')
			element9 if element9.displayed?
		}
			load9.send_keys(:control, '6')	
#Quote10
	driver10 = Selenium::WebDriver.for :firefox
		print("Driver 10 Iteration #{i-1} Started \n")
		driver10.navigate.to "https://test.quomation.com/AutoQuote.aspx?qid=#{quote10}"
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element10.send_keys("101010810")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element10.send_keys("jwilcox")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element10.send_keys("jw")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load10 = wait.until {
			element10 = driver10.find_element(:id, 'btnContinue')
			element10 if element10.displayed?
		}
			load10.send_keys(:control, '6')	
end