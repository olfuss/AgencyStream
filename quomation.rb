require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://quomation.com'

browser.find_element(:id, 'mnulnkSupport').click  

# browser goes to support page

sleep(3)

browser.find_element(:class, 'chat-btn').click

# browser clicks on chat now

sleep(3)

browser.find_element(:partial_link_text, 'Web Services').click

# browser goes to web services

browser.find_element(:class, 'viewdemo-btn').click

# browser clicks on web demos

sleep(3)

browser.find_element(:xpath, '//*[@id="scroller"]/li[2]/a').click

# browser clicks on the 2nd demo and gets error '404 file or directory not found'

browser.find_element(:xpath, '//*[@id="scroller"]/li[3]/a').click

# browser clicks on the 3rd demo. I noticed that it is a different 
# page than what you click on. Page 4 is different that what the image is as well 

browser.find_element(:class, 'left').click

browser.get 'http://quomation.com'

# browser goes back to quomation.com

sleep(3)

browser.find_element(:partial_link_text, 'Advertising').click

sleep(3)

# browser clicks on Advertising link on the bottom of the page

browser.find_element(:class, 'demo-btn').click

# browser clicks on 'Request a demo' button on advertising page

browser.get 'http://quomation.com'

# browser goes to the home page on quomation

sleep(30)

browser.find_element(:xpath, '//*[@id="scroller"]/li[12]/div').click

# browser clicks on clearside insurance on a few of our carries partner list. 
# I noticted that they have a new site.
# When you click on CUIC and GMIC the browser doesn't connect to their site.