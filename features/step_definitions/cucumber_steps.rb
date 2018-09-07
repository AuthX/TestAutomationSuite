require 'selenium-webdriver'
require 'page-object'

When(/^I ask whether it's Friday yet$/) do

  # @return [string]
  def is_it_friday
    if @today == 'Friday'
      @answer = 'Yep'
    else
      @answer = 'Nope'
    end
    puts "Answer = #{@answer}"
  end

  is_it_friday
end


Then(/^I should be told "([^"]*)"$/) do |expected_answer|
  expect(@answer).to eq expected_answer
end

Given(/^Today is "([^"]*)"$/) do |day|
  GoogleHomePage.new(@browser, true)
  sleep 5
  puts "#{day} : This is the current Day"
end

Given(/^I Open google$/) do
  @page = GoogleHomePage.new(@browser, true)
  sleep 5
end

Then(/^I should see the Google Logo$/) do
  puts "Is the logo visible : #{@page.logo_visible?.to_s}"
  expect(@page.logo_visible?).to be true
end

Then(/^I should see the Yahoo Logo$/) do
  expect(@page.logo_visible?).to be true
end

Given(/^I open Yahoo's Site$/) do
  @page = YahooHomePage.new(@browser, true)
end