load File.dirname(__FILE__) + '/../test_helper.rb'

describe "New Specification" do
  include TestHelper

  before(:all) do    
    @driver = $browser = Selenium::WebDriver.for(browser_type)
    @driver.navigate.to(site_url)
  end

  after(:all) do
    @driver.quit unless debugging?
  end

  it "[ID] New Test case" do
    # Test Steps go here
  end

end
