require "watir"
Given (/^I navigate to gmail create an account website$/) do
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
    @browser.goto "https://www.google.com/intl/en-GB/gmail/about/#"
end
When(/^I click Create an account$/) do
    @browser.element(:class => "h-c-button h-c-header__cta-li-link h-c-header__cta-li-link--primary").click
end
Then(/^I should enter "([^"]*)" in firstName$/) do |string|
    @browser.element(:id => "firstName").send_keys "#{string}"
end
And(/^I enter "([^"]*)" in lastName$/) do |string|
    @browser.element(:id => "lastName").send_keys "#{string}"
end
And(/^I type "([^"]*)" in username$/) do |string|
    @browser.element(:id => "username").send_keys "#{string}"
end
And(/^I will enter "([^"]*)" in password$/) do |string|
    @browser.element(:type => "password").send_keys "#{string}"
end
And(/^I put "([^"]*)" in ConfirmPassword/) do |string|
    @browser.element(:name => "ConfirmPasswd").send_keys "#{string}"
end
When(/^I click on Next button$/) do
    @browser.element(:class => "RveJvd snByac").click 
end
Then(/^I should navigate to next page where I should see headingText as Verifying your phone number$/) do
    @browser.element(:id => "headingText").exists?
   student = {1 => ['BoB','18],
           2 => ['jack','19],    
           3 => ['jane','15']}
  student.each{|id, name, age| puts "key : #{id}, value : #{name} #{age}"}
end
