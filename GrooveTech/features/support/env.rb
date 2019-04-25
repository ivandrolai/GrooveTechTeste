require 'capybara/cucumber'
require 'selenium-webdriver'

EL = YAML.load_file('features/elements.yml')

Capybara.configure do |config|
    #selenium    selenium_chrome    selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.movida.com.br/'
    config.default_max_wait_time = 15
end