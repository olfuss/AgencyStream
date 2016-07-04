require 'rubygems'
require 'selenium-webdriver'
=begin
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

  element.send_keys(:tab)

  print = wait.until {
  	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint')
  	element if element.displayed?
  }
  	print.click

  email = wait.until {
  	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail')
  	element if element.displayed?
  }
  	email.click
  	
driver3.quit();
=end
# Test the Insurance Binder form

driver4 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

driver4.navigate.to "https://test.quomation.com/login.aspx"

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

pwrforms = wait.until {
	element = driver4.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')

binder = wait.until {
	element = driver4.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnBinder')
	element if element.displayed?
}
	binder.click
driver4.quit();

driver4 = Selenium::WebDriver.for :firefox
driver4.navigate.to "https://test.quomation.com/PowerForms/Binder.aspx?id=-1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID')
			element.send_keys "65789"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName')
			element.send_keys "jwilcox"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password')
			element.send_keys "jw"
		element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click

element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate')
		element.send_keys "07042016"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyAddress3').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "Sent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').send_keys "80302"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone').send_keys "8018888888"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').clear
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerFax').send_keys "8017777777"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtproducerCode').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "ACustIDSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "CoSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinder').send_keys "BinderSent"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042016"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveTime').send_keys "5"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMEffective').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPMEffective').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCheckBinder').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').send_keys "07042017"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAMExpiration').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNoonExpiration').click
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBinderPolicyNo').send_keys "BinderPolNumber"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredZip').send_keys "99999"
element = driver4.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripBig1').send_keys "Lots of shit can go in this box. But I dont have time to fill it"
