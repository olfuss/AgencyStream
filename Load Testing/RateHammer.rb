require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = 1061943424
quote2 = 
quote3 = 901695744
quote4 = 390242816
quote5 = 1130485888
quote6 = 1168224512
quote7 = 1002762048
quote8 = 1058327424
quote9 = 1551535872
quote10 = 977019776


i=1
loop do 
	i+=1
		
		driver = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote1}"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

			load = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')

		driver2 = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver2.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote2}"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

			load = wait.until {
			element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')

		driver3 = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver3.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote3}"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

			load = wait.until {
			element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '6')



			

	break if i==0
=end
end