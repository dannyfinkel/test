class LeaguesWizard

  def initialize(browser)
    @browser = browser
    @browser.p(:text => 'Select the league(s) you want to follow.').wait_until_present
  end

  def proceed_to_next_step
    @browser.link(:class => 'btn-next').click
  end

end