require 'selenium-webdriver'

#runs before and after scenarios, features or steps as specified

Before do
@browser = Selenium::WebDriver.for :chrome
# @browser.manage.window.maximize
@browser.manage.timeouts.implicit_wait = 5

end

After do
  @browser.close
end