require 'rubygems'
require 'selenium-webdriver'

quote0 = 1061943424
quote1 = 420524954
quote2 = 901695744
quote3 = 390242816
quote4 = 1130485888
quote5 = 1168224512
quote6 = 1002762048
quote7 = 521080384
quote8 = 1551535872
quote9 = 956343872
	
	def browserauto (quote)
		@wait = Selenium::WebDriver::Wait.new(:timeout => 30)
		@driver = Selenium::WebDriver.for :firefox
    	@driver.navigate.to "https://asweb01.agencystream.local/login.aspx"
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
				element.send_keys("#{quote}")
		element = @driver.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = @wait.until {
			element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click
		
		@driver.navigate.to "https://asweb01.agencystream.local/AutoQuote.aspx?qid=#{quote}"
		
		if 
			privacy = @wait.until {
				element = @driver.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		else

		load = @wait.until {
			element = @driver.find_element(:id, 'tQuote').click
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		end
	end

def browserhome (quote)
		@wait = Selenium::WebDriver::Wait.new(:timeout => 30)
		@driver = Selenium::WebDriver.for :firefox
    	@driver.navigate.to "https://asweb01.agencystream.local/login.aspx"
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = @driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
				element.send_keys("#{quote}")
		element = @driver.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = @wait.until {
			element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click
		
		@driver.navigate.to "https://asweb01.agencystream.local/HomeQuote.aspx?qid=#{quote}"
		
		if 
			privacy = @wait.until {
				element = @driver.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		else

		load = @wait.until {
			element = @driver.find_element(:id, 'tQuote').click
			element if element.displayed?
		}
			load.send_keys(:control, '7')
		end
	end


i=1
loop do 
	i+=1
		browserhome quote0 
		browserauto quote1
		browserauto quote2
		browserauto quote3
		browserauto quote4
		browserauto quote5
		browserauto quote6
		browserauto quote7
		browserauto quote8
		browserauto quote9
	break if i==0
end 