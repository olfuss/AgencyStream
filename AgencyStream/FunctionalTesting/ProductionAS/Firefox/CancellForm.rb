require 'rubygems'
require 'selenium-webdriver'

driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver5.navigate.to "https://www.agencystream.com/login.aspx"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver5.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
cancel = wait.until {
	element = driver5.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnCancel')
	element if element.displayed?
}
	cancel.click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 14)
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
sleep(2)
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerPhone')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
		element.send_keys "8018888888"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Produce Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "Producer Address 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "Producer Address 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCity').send_keys "ProdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProducerZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerCode').send_keys "ProdCode12344"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerSubCode').send_keys "ProdSubCode3444"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgencyCustID').send_keys "AgncyCustID"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "InsdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNAIC').send_keys "NAICode"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyName').send_keys "Company Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyAddress1').send_keys "Company Add1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyAddress2').send_keys "Company Add2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompanyCity').send_keys "CompanyCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCompanyState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCompanyZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyType').send_keys "PolType"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber').send_keys "PolNum"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCancelDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskCancelTime').send_keys "12"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskExpirationDate').send_keys "07042017"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkCancelRequest').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPolicyRelease').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsured1').send_keys "Insd 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsured2').send_keys "Insd 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoan1').send_keys "Loan 1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLoan2').send_keys "Loan 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLienHolder2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkMortgagee2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkLossPayee2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNotTaken').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkReqInsured').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRewritten').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkFlat').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkShortRate').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkProRata').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkPremCalc').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherReason').send_keys "Other reason text fill here"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCompany').send_keys "Company"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNumber2').send_keys "PolNum 2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskEffectiveDate2').send_keys "07042014"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFTPremium').send_keys "FT Premium"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtFactor').send_keys "Factor"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtReturnPremium').send_keys "Return Prem"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRemarks').send_keys "Remarks go here, lots of room"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdName').send_keys "Prod Name"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdAddress1').send_keys "Prod Add1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdAddress2').send_keys "Prod Add2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdCity').send_keys "ProdCity"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProdState').send_keys "RS"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_mskProdZip').send_keys "98744"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkInsured').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQMortgagee').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkTQCompany').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQOther1').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQLossPayee').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQLienHolder').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQFinanceCo').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_chkRQOther2').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRQOther1').send_keys "RQ Other1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRQOther2').send_keys "RQ Other2"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_imgTopLogo').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'home_icon').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver5.quit();
driver5 = Selenium::WebDriver.for :firefox
driver5.navigate.to "https://www.agencystream.com/PowerForms/Cancellation.aspx?id=-1"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver5.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver5.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver5.quit();
puts "Cancellation Form Successfully Tested"
#Cancellation Form Done