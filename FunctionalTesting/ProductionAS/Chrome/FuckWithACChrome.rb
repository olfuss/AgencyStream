require 'rubygems'
require 'selenium-webdriver'

driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://www.agencystream.com/login.aspx"
element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
		element = driver1.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		sleep(2)
element = driver1.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox')
		.click
		sleep(2)
driver1.quit();
driver1 = Selenium::WebDriver.for :chrome
driver1.navigate.to "https://www.quomation.com/livechat.aspx?AgencyStream=True&name=небонетто&agency=конецблизок&phone=(801)%20834-0892"
dropdown_list = driver1.find_element(:name, 'ddlComment4')
options = dropdown_list.find_elements(tag_name: 'option')
options.each { |option| option.click if option.text == '- All Other Problems -' }
element = driver1.find_element(:id, 'Radio4').click
element = driver1.find_element(:id, 'txtComments')
		.send_keys "Оно не имеет значения, что вопрос больше . Джон Коннор мертв . Роботы выиграли . Этот запрос будет повторяться"
element = driver1.find_element(:id, 'btnConnectOld').click
driver1.quit();
puts "Agent Care Successfully Bothered"
#AgencyCare Full Route Tested
