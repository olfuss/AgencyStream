require 'rubygems'
require 'selenium-webdriver'

driver3 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)
driver3.navigate.to "https://www.agencystream.com/login.aspx"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
pwrforms = wait.until {
	element = driver3.find_element(:id, 'btnPowerForms_text')
	element if element.displayed?
}
	pwrforms.click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_dragPowerForms')
sleep(2)
liab = wait.until {
	element = driver3.find_element(:id, 'ctl00_ContentPlaceHolderSidebar_btnLiab')
	element if element.displayed?
}
	liab.click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
sleep(2)
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskDate').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerName').send_keys "Producer Name"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress1').send_keys "ProdAdd1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress2').send_keys "ProdAdd2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress3').send_keys "ProdAdd3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtProducerAddress4').send_keys "ProdAdd4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtContactName').send_keys "ContactName"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactPhone')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888888"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskContactFax')
	element.send_keys(:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left,
		:arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left, :arrow_left)
			element.send_keys "8018888889"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredName').send_keys "InsdName"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1').send_keys "InsdAdd1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2').send_keys "InsdAdd2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredCity').send_keys "InsdCity"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredState').send_keys "RS"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskInsuredZip').send_keys "12344"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtcontactEmail').send_keys "email@email.com.org.net"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredA').send_keys "InsdA"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredB').send_keys "InsdB"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredC').send_keys "InsdC"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredD').send_keys "InsdD"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredE').send_keys "InsdE"
# element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredF').send_keys "InsdF"
#Field locked, file a bug.
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicA').send_keys "NAICA"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicB').send_keys "NAICB"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicC').send_keys "NAICC"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicD').send_keys "NAICD"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicE').send_keys "NAICE"
# element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtNaicF').send_keys "NAICF"
#Field Locked, file a bug with bug from line #429
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr1').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr2').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr3').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr4').send_keys "D"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr5').send_keys "E"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr6').send_keys "F"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr7').send_keys "G"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkComm').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLiab2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenliab3').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenPolicy').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenProject').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkGenLoc').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab1').send_keys "Liable One"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtGenliab2').send_keys "Liable Two"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd1').send_keys "AddLI1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd2').send_keys "AddLI2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd3').send_keys "AddLI3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd4').send_keys "AddLI4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd5').send_keys "AddLI5"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd6').send_keys "AddLI6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddLInsrd7').send_keys "AddLI7"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv1').send_keys "SubWv1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv2').send_keys "SubWv2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv3').send_keys "SubWv3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv4').send_keys "SubWv4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv5').send_keys "SubWv5"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv6').send_keys "SubWv6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv7').send_keys "SubWv7"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum1').send_keys "PolicyNum1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate1').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate1').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov1').send_keys "OtherCover"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim1').send_keys "1.34"
#Fields Locked, file bug with other locked fields.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum2').send_keys "PolicyNum2"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate2').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate2').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim2').send_keys "2.22"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum3').send_keys "PolicyNum3"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate3').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate3').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim3').send_keys "3.44"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim4').send_keys "4.84"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim5').send_keys "4.94"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum4').send_keys "PolicyNum4"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate4').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate4').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim6').send_keys "4.24"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum7').send_keys "PolicyNum7"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate7').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate7').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim7').send_keys "7.23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr8').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr9').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr10').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr11').send_keys "D"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr12').send_keys "E"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAnyAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkAllAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkHiredAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank1').send_keys "Blank 1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkScheduleAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkNonAuto').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkBlank2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtBlank2').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd8').send_keys "AddLI8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd9').send_keys "AddLI9"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd10').send_keys "AddLI10"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd11').send_keys "AddLI11"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd12').send_keys "AddLI12"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv8').send_keys "SubWv8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv9').send_keys "SubWv9"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv10').send_keys "SubWv10"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv11').send_keys "SubWv11"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv12').send_keys "SubWv12"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum8').send_keys "PolNum8"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate8').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate8').send_keys "07042017"
#Fields Locked.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum9').send_keys "PolNum9"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate9').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate9').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum10').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate10').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate10').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum11').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate11').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate11').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum12').send_keys "PolNum8"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate12').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate12').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherCov2').send_keys "Cover 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim8').send_keys "8.23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim9').send_keys "7.42"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim10').send_keys "4.44"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim11').send_keys "300"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim12').send_keys "39"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr18').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr19').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr20').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkUmbrella').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkExcess').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkDeduct').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkReten').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOccur2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkClaimsMade2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtRetention').send_keys "124.44"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd18').send_keys "AI18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd19').send_keys "AI19"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd20').send_keys "AI20"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv18').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv19').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv20').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr26').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr27').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr28').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum18').send_keys "PolNum18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate18').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate18').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAgg1').send_keys "TextAgg 1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim18').send_keys "18"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim19').send_keys "19"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim20').send_keys "20"
#Fields Locked.
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum19').send_keys "PolNum19"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate19').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate19').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum20').send_keys "PolNum20"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate20').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate20').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_CheckBox2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim23').send_keys "194.24"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim24').send_keys "443.49"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim25').send_keys "443.84"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtWorkersComp').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyProp').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSpecPro').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "Y"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAnyPropYN').send_keys "N"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv23').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv24').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv25').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum23').send_keys "PolNum 23"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate23').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate23').send_keys "07042017"
#Fields Locked
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum24').send_keys "PolNum 23"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate24').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate24').send_keys "07042017"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum24').send_keys "PolNum 23"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate24').send_keys "07042014"
#element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate24').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr26').send_keys"A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr27').send_keys"B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsrLtr28').send_keys"C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther1').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther2').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_chkOther3').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank1').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank3').send_keys "Blank 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank5').send_keys "Blank 6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd26').send_keys "A"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd27').send_keys "B"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtAddlInsrd28').send_keys "C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv26').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv27').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtSubWv28').send_keys "S"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum26').send_keys "PolNum 26"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum27').send_keys "PolNum 27"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtPolicyNum28').send_keys "PolNum 28"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate26').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate27').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyEffDate28').send_keys "07042014"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate26').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate27').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_mskPolicyExpDate28').send_keys "07042017"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank2').send_keys "Blank 2"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank4').send_keys "Blank 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtOtherBlank6').send_keys "Blank 6"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim26').send_keys "101"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim27').send_keys "102"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtLim28').send_keys "103"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtDescripSpecial').send_keys "Text for the texts boxioucious"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredNameC').send_keys "InsdName C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress1C').send_keys "InsdAdd 1C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtInsuredAddress2C').send_keys "InsdAdd 2C"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd3').send_keys "HolderAdd 3"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertHolderAdd4').send_keys "HolderAdd 4"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_txtCertificateFax').send_keys "CertiFax"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnPrint').click
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_btnEmail').click
element = driver3.find_element(:id, 'ctl00_imgTopLogo').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'home_icon').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_loginViewChat_pnlLiveChatBox').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_imgTopLogo').click
driver3.quit();
driver3 = Selenium::WebDriver.for :firefox
driver3.navigate.to "https://www.agencystream.com/PowerForms/CertOfLiability.aspx?id=-1"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_AgencyID').send_keys "65789"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_UserName').send_keys "jwilcox"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_Password').send_keys "jw"
element = driver3.find_element(:id, 'ctl00_ContentPlaceHolder1_Login_btnLogin').click
sleep(2)
element = driver3.find_element(:id, 'ctl00_LoginView1_aLogout').click
driver3.quit();
puts "Liability Form Successfully Tested"
#Liability Form Done