class SignUpSummary
  def initialize(browser)
    @browser = browser
    @browser.p(:text => 'You are now following sports, leagues and teams. You will receive the latest news, results, images and videos from what you selected.').wait_until_present
  end

  def proceed_to_finish
    @browser.link(:class => 'btn-next').click
  end

end