class SportsWizard

  def initialize(browser)
    @browser = browser
    @browser.p(text: 'Select 3 or more sports you want to follow.').wait_until_present
  end

  def select_three_sports
    @browser.ul(class: 'thumbs').lis[0..2].each do |li|
      li.click
    end
  end

  def proceed_to_next_step
    @browser.link(:class => 'btn-next').click
  end

end