require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 15)

i=0
loop do 
	i+=1
		
		driver = Selenium::WebDriver.for :firefox
		driver.navigate.to "https://test.quomation.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("1061943424")
		
		element = driver.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver.navigate.to "https://test.quomation.com/HomeQuote.aspx?qid=1061943424"

		load = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
	
	break if i==10
end
end