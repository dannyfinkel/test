And(/^I am taken to the Sports Wizard$/) do
  @sports_wizard = SportsWizard.new(@browser)
end

And(/^I select three sports in the Sports Wizard$/) do
  @sports_wizard.select_three_sports
  @sports_wizard.proceed_to_next_step
end

And(/^I am taken to the Leagues Wizard$/) do
  @leagues_wizard = LeaguesWizard.new(@browser)
end

And(/^I go through the League Wizard$/) do
  @leagues_wizard.proceed_to_next_step
end

And(/^I go to the Summary Page$/) do
  @sign_up_summary = SignUpSummary.new(@browser)
end

And(/^I complete the Wizard after clicking Finish button$/) do
  @sign_up_summary.proceed_to_finish
end

Then(/^I should be taken to My Wall$/) do
  @browser.url.should include '/wall'
end