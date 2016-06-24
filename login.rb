require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
	driver.navigate.to "https://test.quomation.com/login.aspx"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
	driver.quit();

#Test PowerForms ID Card form and all fields

driver2 = Selenium::WebDriver.for :firefox
	driver2.navigate.to "https://test.quomation.com/login.aspx"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
		element = driver2.find_element(:id, 'btnPowerForms_text').click
		sleep(5)
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
		element = driver2.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnDefaultIDCard').click
	driver2.quit();

driver3 = Selenium::WebDriver.for :firefox
	driver3.navigate.to "https://test.quomation.com/PowerForms/InsuranceIDCard.aspx"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

#This code has to be a little more robust to handle inputting into the fields on forms.	

wait = Selenium::WebDriver::Wait.new(:timeout => 15)
	
input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtState')
	element if element.displayed?
}
	input.send_keys("RS")

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyNumber')
	element if element.displayed?
}
	input.send_keys("CompanySendKeySent")

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany')
	element if element.displayed?
}
	input.send_keys("TestCompanySent")

element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click

input = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber')
	element if element.displayed?
}
	input.send_keys("PolicyNumberKeySent")

# Test Effective Date and Expiration Date fields, however this needs to be fixed to test the dropdown feature selections as well.
# Currently we are just sending a key value which is good, but we need to test both.

effdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate')
	element if element.displayed?
}
	effdate.click

effdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderEffDate_today')
	element if element.displayed?
}
	effdate.click

expdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate')
	element if element.displayed?
}
	expdate.click

expdate = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CalendarExtenderExpDate_today')
	element if element.displayed?
}
	expdate.click

year = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtYear')
	element if element.displayed?
}
	year.send_keys("1944")

make = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtMake')
	element if element.displayed?
}
	make.send_keys("Panzer")

model = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtModel')
	element if element.displayed?
}
	model.send_keys("Panzerkampfwagen IV")

vin = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtVIN')
	element if element.displayed?
}
	vin.send_keys("PKW60012938")

#Add code to validate the locked field entries for AGENCY/COMPANY ISSUING CARD
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtAgencyName')
#    driver.verify? text = "Quomation Insutance Services"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtAgencyAddress1')
#    driver.verify? text = "7400 Union Park Ave #101"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtAgencyAddress2')
#    driver.verify? text = ""
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtAgencyCity')
#    driver.verify? text = "Midvale"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtAgencyState')
#    driver.verify? text = "UT"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$mskAgencyZip')
#    driver.verify? text = "84047" 

name = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName')
	element if element.displayed?
}
	name.send_keys("Vladimir Putin")

address = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress')
	element if element.displayed?
}
	address.send_keys("Somewhere in Russia in Russian House #{1}")

city = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity')
	element if element.displayed?
}
	city.send_keys("Ovechkination")

state = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState')
	element if element.displayed?
}
	state.send_keys("UT")

zip = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip')
	element if element.displayed?
}
	zip.send_keys("84070")


# Currently verifies buttons exist but we need to add code to push a print to .pdf and send an email.

#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$btnPrint')
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$btnEmail')

# All form fields of the ID card are tested.

#driver.quit();

# Test the Insurance Binder form

#driver.navigate.to "https://test.quomation.com/login.aspx"
#element = driver.find_element(:id, 'btnPowerForms_text').click
#element = driver.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolderSidebar$btnBinder').click

#Driver (window 2) operations
#driver2.navigate.to "https://www.quomation.com/livechat.aspx?AgencyStream=True&name=I_Am_Robot&agency=Kitten_Suicide_Clan&phone=(801)%205555555"
