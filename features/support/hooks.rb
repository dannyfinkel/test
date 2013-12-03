require 'watir-webdriver'
require 'random_data'



Before do
  @browser = Watir::Browser.new :firefox

end


After do
  @browser.close
end