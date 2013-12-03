class SignUpPage

  include PageObject

  page_url("http://localhost:3030/sign_up/info")
  text_field(:first_name, :class => 'first_name')
  text_field(:last_name, :class => 'last_name')
  text_field(:password, :class => 'password')
  link(:click_create_button, :class => 'btn-next')


  def enter_user_info(first_name, last_name, email_address, password)
    self.first_name = first_name
    self.last_name = last_name
    @browser.element(:css => '.current-page input.email').to_subtype.set(email_address)
    puts email_address
    self.password = password
  end

  def select_country=(country)
    @browser.element(:css => '.current-page input.autocomplete-input').to_subtype.set(country)
    @browser.li(:text => "#{country}").when_present.click
  end

  def select_gender=(gender)
     @browser.label(:text => "#{gender}").parent.radio.set
  end

  def check_age_requirement
    @browser.label(:text => 'I am at least 13 years old').parent.checkbox.set
  end

end