# driver.find_element(:id=>"ELEMENT").text.include? "TEXT"
#or
# driver.page_source.include? 'Text'
#or
# driver.page_source.should_not include 'Login failed'

require 'rubygems'
require 'selenium-webdriver'

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

quote1 = "HomeQuote.aspx?qid=1416518450"

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
			element = driver1.find_element(:id, 'tQuote')
			element if element.displayed?
		}
			load.click
	sleep(3)

	if 
		driver1.page_source.include? 'Error'
  	then 
		puts "Rating error found on Driver 1 Iteration #{i-1}"
			else
		puts "NO rating errors on Driver 1 iteration #{i-1}"
	end
	break if i==3
end