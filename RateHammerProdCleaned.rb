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
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

def browserauto (quote)
		@driver = Selenium::WebDriver.for :firefox
    	@driver.navigate.to "http://www.agencystream.com/login.aspx"
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
			element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients').click
		@driver.navigate.to "http://www.agencystream.com/AutoQuote.aspx?qid=#{quote}"
			element = @driver.find_element(:id, 'tQuote').click
	end
def browserhome (quote)
		@driver = Selenium::WebDriver.for :firefox
    	@driver.navigate.to "http://www.agencystream.com/login.aspx"
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
			element = @driver.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients').click
		@driver.navigate.to "http://www.agencystream.com/HomeQuote.aspx?qid=#{quote}"			
	end
def tquoteauto
		if
	    	element = @driver.find_element(:id,'tQuote').click
   	    	elsif    	    	
   	    		element = @driver.find_element(:id, 'tQuote')
	    		element.send_keys(:control, '6')
				else
					sleep(5)
		end
	end
def tquotehome
		if
		    element = @driver.find_element(:id, 'tQuote').click
		    elsif
	    		element = @driver.find_element(:id, 'tQuote')
	    		element.send_keys(:control, '7')
				else
					sleep(5)
		end
	end
i=1
loop do 
	i+=1
		browserhome quote0
 		tquotehome
		browserauto quote1
		tquoteauto
		browserauto quote2
		tquoteauto
		browserauto quote3
		tquoteauto
		browserauto quote4
		tquoteauto
		browserauto quote5
		tquoteauto
		browserauto quote6
		tquoteauto
		browserauto quote7
		tquoteauto
		browserauto quote8
		tquoteauto
		browserauto quote9
	break if i==0
end 