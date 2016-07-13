require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = "HomeQuote.aspx?qid=1416518450"
quote2 = "AutoQuote.aspx?qid=1883934336"
quote3 = "AutoQuote.aspx?qid=1697838208"
quote4 = "HomeQuote.aspx?qid=1521263488"
quote5 = "AutoQuote.aspx?qid=1851817856"
quote6 = "HomeQuote.aspx?qid=868235200"
quote7 = "HomeQuote.aspx?qid=491194963"
quote8 = "HomeQuote.aspx?qid=1055084608"
quote9 = "AutoQuote.aspx?qid=1033416390"
quote10 = "AutoQuote.aspx?qid=702415824"

#setup
=begin
driver0 = Selenium::WebDriver.for :firefox
driver0.navigate.to "https://www.agencystream.com/login.aspx"
element0 = driver0.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
    element0 = driver0.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
    element0 = driver0.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
    element0 = driver0.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
 sleep(3)
driver0.navigate.to "https://www.agencystream.com/CarrierInfo.aspx"
element0 = driver0.find_element(:id, 'chkCheckAllAuto').click
element0 = driver0.find_element(:id, 'chkCheckAllAuto').click
element0 = driver0.find_element(:id, 'chkCheckAllAuto').click
element0 = driver0.find_element(:id, 'tHome').click
element0 = driver0.find_element(:id, 'chkCheckAllHome').click
element0 = driver0.find_element(:id, 'chkCheckAllHome').click
element0 = driver0.find_element(:id, 'chkCheckAllHome').click
element0 = driver0.find_element(:id, 'MainButtonSave').click
sleep(3)
driver0.quit();
=end
i=1
loop do 
	i+=1
#Quote1		
	driver1 = Selenium::WebDriver.for :firefox
		print("Driver 1 Iteration #{i-1} Started \n")
		driver1.navigate.to "https://www.agencystream.com/#{quote1}"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load = wait.until {
			element = driver1.find_element(:id, 'btnContinue')
			element if element.displayed?
		}
			load.send_keys(:control, '7')
	if 
		driver1.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 1 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 1 iteration #{i-1}"
	end
#Quote2
	driver2 = Selenium::WebDriver.for :firefox
		print("Driver 2 Iteration #{i-1} Started \n")
		driver2.navigate.to "https://www.agencystream.com/#{quote2}"
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element2 = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load2 = wait.until {
			element2 = driver2.find_element(:id, 'btnContinue')
			element2 if element2.displayed?
		}
			load2.send_keys(:control, '6')
	if 
		driver2.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 2 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 2 iteration #{i-1}"
	end
#quote3
	driver3 = Selenium::WebDriver.for :firefox
		print("Driver 3 Iteration #{i-1} Started \n")
		driver3.navigate.to "https://www.agencystream.com/#{quote3}"
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element3 = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load3 = wait.until {
			element3 = driver3.find_element(:id, 'btnContinue')
			element3 if element3.displayed?
		}
			load3.send_keys(:control, '6')
	if 
		driver3.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 3 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 3 iteration #{i-1}"
	end
#Quote4
	driver4 = Selenium::WebDriver.for :firefox
		print("Driver 4 Iteration #{i-1} Started \n")
		driver4.navigate.to "https://www.agencystream.com/#{quote4}"
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element4 = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load4 = wait.until {
			element4 = driver4.find_element(:id, 'btnContinue')
			element4 if element4.displayed?
		}
			load4.send_keys(:control, '7')
	if 
		driver4.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 4 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 4 iteration #{i-1}"
	end	
#Quote5
	driver5 = Selenium::WebDriver.for :firefox
		print("Driver 5 Iteration #{i-1} Started \n")
		driver5.navigate.to "https://www.agencystream.com/#{quote5}"
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element5 = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load5 = wait.until {
			element5 = driver5.find_element(:id, 'btnContinue')
			element5 if element5.displayed?
		}
			load5.send_keys(:control, '6')
	if 
		driver5.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 5 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 5 iteration #{i-1}"
	end	
#Quote6
	driver6 = Selenium::WebDriver.for :firefox
		print("Driver 6 Iteration #{i-1} Started \n")
		driver6.navigate.to "https://www.agencystream.com/#{quote6}"
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element6 = driver6.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load6 = wait.until {
			element6 = driver6.find_element(:id, 'btnContinue')
			element6 if element6.displayed?
		}
			load6.send_keys(:control, '7')
	if 
		driver6.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 6 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 6 iteration #{i-1}"
	end	
#Quote7
	driver7 = Selenium::WebDriver.for :firefox
		print("Driver 7 Iteration #{i-1} Started \n")
		driver7.navigate.to "https://www.agencystream.com/#{quote7}"
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element7 = driver7.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load7 = wait.until {
			element7 = driver7.find_element(:id, 'btnContinue')
			element7 if element7.displayed?
		}
			load7.send_keys(:control, '7')
	if 
		driver7.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 7 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 7 iteration #{i-1}"
	end	
#Quote8
	driver8 = Selenium::WebDriver.for :firefox
		print("Driver 8 Iteration #{i-1} Started \n")
		driver8.navigate.to "https://www.agencystream.com/#{quote8}"
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element8 = driver8.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load8 = wait.until {
			element8 = driver8.find_element(:id, 'btnContinue')
			element8 if element8.displayed?
		}
			load8.send_keys(:control, '7')
	if 
		driver8.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 8 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 8 iteration #{i-1}"
	end	
#Quote9
	driver9 = Selenium::WebDriver.for :firefox
		print("Driver 9 Iteration #{i-1} Started \n")
		driver9.navigate.to "https://www.agencystream.com/#{quote9}"
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element9 = driver9.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load9 = wait.until {
			element9 = driver9.find_element(:id, 'btnContinue')
			element9 if element9.displayed?
		}
			load9.send_keys(:control, '6')
	if 
		driver9.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 9 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 9 iteration #{i-1}"
	end	
#Quote10
	driver10 = Selenium::WebDriver.for :firefox
		print("Driver 10 Iteration #{i-1} Started \n")
		driver10.navigate.to "https://www.agencystream.com/#{quote10}"
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys("34574")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys("olfuss.ratatosksson@quomation.com")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys("Odinsson1010")
		element10 = driver10.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
	sleep(3)
		load10 = wait.until {
			element10 = driver10.find_element(:id, 'btnContinue')
			element10 if element10.displayed?
		}
			load10.send_keys(:control, '6')
	if 
		driver10.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 10 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 10 iteration #{i-1}"
	end	
end