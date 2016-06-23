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
driver2 = Selenium::WebDriver.for :firefox

#Test PowerForms ID Card form and all fields

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
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtState').click
#	element.send_keys "RS"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyNumber').click
#	element.send_keys "CompanySendKeySent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').click
#	element.send_keys "TestCompanySent"
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCommercial').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPersonal').click
element = driver2.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').click
#	element.send_keys "PolicyNumberKeySent"


# Test Effective Date and Expiration Date fields, however this needs to be fixed to test the dropdown feature selections as well.
# Currently we are just sending a key value which is good, but we need to test both.

#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$mskEffectiveDate').click
#	element.send_keys "06/14/2015"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$mskExpirationDate').click
#	element.send_keys "06/14/2020"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtYear').click
#	element.send_keys "2001"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtMake').click
#	element.send_keys "Panzer"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtModel').click
#	element.send_keys "Panzerkampfwagen IV"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtVIN').click
#	element.send_keys "PKW60012938"

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

#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtInsuredName')
#	element.send_keys "Vladimir Putin"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtInsuredAddress').click
#	element.send_keys "Somewhere in Russia in Russian House #{1}"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtInsuredCity').click
#	element.send_keys "Testity"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$txtInsuredState').click
#	element.send_keys "RU"
#element = driver.find_element(:id, 'ctl00$ContentPlaceHolder1$mskInsuredZip').click
#	element.send_keys "84070"

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
