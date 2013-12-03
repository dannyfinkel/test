class ThankYouPage

  include PageObject

  page_url("http://localhost:3030/sign_up/thank_you")

  def wait_for_page_load
    Watir::Wait.until { @browser.url.include? "/sign_up/thank_you" }
  end

  def verify_thankyou_message
    @browser.div(:class => 'join-container').h3.text
  end

end