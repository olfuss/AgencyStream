require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = 1061943424
quote2 = 1248091520
quote3 = 790520320
quote4 = 390242816
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

		driver.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote1}"

		load = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')

		driver2 = Selenium::WebDriver.for :firefox
		print("Iteration driver2 #{i} Started")
		driver2.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote2}")
		
		element = driver2.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver2.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote2}"

		load = wait.until {
			element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
			
		driver3 = Selenium::WebDriver.for :firefox
		print("Iteration driver 3 #{i} Started")
		driver3.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver3.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote3}")
		
		element = driver3.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver3.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote3}"

		load = wait.until {
			element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
			
		driver4 = Selenium::WebDriver.for :firefox
		print("Iteration driver 4 #{i} Started")
		driver4.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote4}")
		
		element = driver4.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver4.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote4}"

		load = wait.until {
			element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
				
		driver5 = Selenium::WebDriver.for :firefox
		print("Iteration driver 5 #{i} Started")
		driver5.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver5.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote5}")
		
		element = driver5.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver5.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote5}"

		load = wait.until {
			element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
			
		driver6 = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver6.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver6.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote6}")
		
		element = driver6.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver6.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote6}"

		load = wait.until {
			element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
			
		driver = Selenium::WebDriver.for :firefox
		print("Iteration driver 7 #{i} Started")
		driver7.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver7.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote7}")
		
		element = driver7.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver7.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote7}"

		load = wait.until {
			element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
	
		driver8 = Selenium::WebDriver.for :firefox
		print("Iteration driver 8 #{i} Started")
		driver8.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver8.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote8}")
		
		element = driver8.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote8}"

		load = wait.until {
			element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
	
		driver9 = Selenium::WebDriver.for :firefox
		print("Iteration driver 9 #{i} Started")
		driver9.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver9.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote9}")
		
		element = driver9.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver9.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote9}"

		load = wait.until {
			element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')

		driver10 = Selenium::WebDriver.for :firefox
		print("Iteration driver 10 #{i} Started")
		driver10.navigate.to "https://www.agencystream.com/login.aspx"
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("jwilcox")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("jw")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

		quoteid = wait.until {
			element = driver10.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote10}")
		
		element = driver10.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver10.navigate.to "https://www.agencystream.com/HomeQuote.aspx?qid=#{quote10}"

		load = wait.until {
			element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_cmbCoAppRelation')
			element if element.displayed?
		}
			element.send_keys(:control, '7')
	
	break if i==0
end