class HomePage

  include PageObject

  page_url("http://localhost:3030/#")

  link(:proceed_to_sign_up, :css => '.current-page .btn-sign-up')

end