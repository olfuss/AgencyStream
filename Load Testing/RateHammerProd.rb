require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = 1061943424
quote2 = 420524954
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

#Driver

		driver = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote1}"

		if 
			privacy = wait.until {
				element = driver.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')

		break if i==0
	end

#Driver 2

i=1
loop do 
	i+=1

		driver2 = Selenium::WebDriver.for :firefox
		print("Iteration driver2 #{i} Started")
		driver2.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver2.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote2}"

		if 
			privacy = wait.until {
				element = driver2.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver2.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		
		break if i==0
	end
		
#Driver 3

i=1
loop do 
	i+=1
			
		driver3 = Selenium::WebDriver.for :firefox
		print("Iteration driver 3 #{i} Started")
		driver3.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver3.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote3}"

		if 
			privacy = wait.until {
				element = driver3.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver3.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		
		break if i==0
	end

#Driver 4

i=1
loop do 
	i+=1

		driver4 = Selenium::WebDriver.for :firefox
		print("Iteration driver 4 #{i} Started")
		driver4.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver4.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote4}"

		if 
			privacy = wait.until {
				element = driver4.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver4.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')

		break if i==0
	end

#Driver 5

i=1
loop do 
	i+=1

		driver5 = Selenium::WebDriver.for :firefox
		print("Iteration driver 5 #{i} Started")
		driver5.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver5.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote5}"

		if 
			privacy = wait.until {
				element = driver5.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver5.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')

		break if i==0
	end

#Driver 6

i=1
loop do 
	i+=1

		driver6 = Selenium::WebDriver.for :firefox
		print("Iteration #{i} Started")
		driver6.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver6.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote6}"

		if 
			privacy = wait.until {
				element = driver6.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver6.find_element(:id, 'tQuote')
			element if element.displayed?
		}

			load.send_keys(:control, '6')
		
		break if i==0
	end

#Driver 7
			
i=1
loop do 
	i+=1

		driver7 = Selenium::WebDriver.for :firefox
		print("Iteration driver 7 #{i} Started")
		driver7.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver7.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote7}"

		if 
			privacy = wait.until {
				element = driver7.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver7.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		
		break if i==0
	end

#Driver 8

i=1
loop do 
	i+=1
	
		driver8 = Selenium::WebDriver.for :firefox
		print("Iteration driver 8 #{i} Started")
		driver8.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver8.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote8}"

		if 
			privacy = wait.until {
				element = driver8.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver8.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		
		break if i==0
	end

#Driver 9

i=1
loop do 
	i+=1
	
		driver9 = Selenium::WebDriver.for :firefox
		print("Iteration driver 9 #{i} Started")
		driver9.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver9.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote9}"

		if 
			privacy = wait.until {
				element = driver9.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver9.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
		
		break if i==0
	end

#Driver 10

i=1
loop do 
	i+=1

		driver10 = Selenium::WebDriver.for :firefox
		print("Iteration driver 10 #{i} Started")
		driver10.navigate.to "https://www.agencystream.com/Login.aspx"
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
				element.send_keys("65789")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
				element.send_keys("olfuss.ratatosksson@quomation.com")
		element = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
				element.send_keys("Odinsson10")
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

		driver10.navigate.to "https://www.agencystream.com/AutoQuote.aspx?qid=#{quote10}"

		if 
			privacy = wait.until {
				element = driver10.find_element(:id, 'btnPrivacyOK')
				element if element.displayed?
			}
				privacy.click
		end

		load = wait.until {
			element = driver10.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.send_keys(:control, '6')
	
	break if i==0
end