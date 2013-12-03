Given(/^I am on the HomePage$/) do
  visit(HomePage)
end

When(/^I go to Sign Up Page$/) do
  on(HomePage).proceed_to_sign_up
end

And(/^I fill out the sign up form$/) do
  on(SignUpPage) do |page|
    page.enter_user_info(Random.first_name, Random.last_name, Random.email, 'testing')
    page.select_country = 'United States'
    page.select_gender = 'Male'
    page.check_age_requirement
    page.click_create_button
  end
end

Then(/^I should be taken to Thank You Page$/) do
  on(ThankYouPage) do |page|
    page.wait_for_page_load
    page.verify_thankyou_message.should include "Thank you for creating your account with SPORTS195"
  end
end