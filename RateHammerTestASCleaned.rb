require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

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



def login (DrvNum, QuoteId)
	driver'#{DrvNum}' = Selenium::WebDriver.for :firefox
	driver.navigate.to "https://asweb01.agencystream.local/login.aspx"
		element = driver'#{DrvNum}'.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver'#{DrvNum}'.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver'#{DrvNum}'.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
		element = driver'#{DrvNum}'.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		quoteid = wait.until {
			element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_txtSearch')
			element if element.displayed?
		}
			quoteid.send_keys("#{quote1}")
		
		element = driver'#{DrvNum}'.find_element(:id, 'imgBtnSearch').click

		uppnlclnt = wait.until {
			element = driver'#{DrvNum}'.find_element(:id, 'ctl00_ContentPlaceHolder1_UpdatePanelClients')
			element if element.displayed?
		}
			uppnlclnt.click

		driver.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote1}"

		if 
			privacy = wait.until {
				element = driver'#{DrvNum}'.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver'#{DrvNum}'.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')


end


i=1
loop do 
	i+=1

#Driver 0

	login 0, '#{quote0}'

end 
