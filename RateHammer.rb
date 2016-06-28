require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = 1061943424
quote2 = 1248091520
quote3 = 790520320
quote4 = 1523928576
quote5 = 1079073792
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
		driver.navigate.to "https://www.agencystream.com/login.aspx"
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
			quoteid.send_keys("#{quote1}")
		
		element = driver.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver.navigate.to "https://test.quomation.com/HomeQuote.aspx?qid=#{quote1}"

		load = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
	
	break if i==0
end