# frozen_string_literal:true
# We can set an env variable to point to the browser that we want to run. You can set this up in many ways!
# The project would be run by executing cucumber BROWSER=chrome -t <@some-tagged-test>

Before do
  begin
    case ENV['BROWSER']
      when 'chrome-headless'
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--window-size=1200,1100')
        headless_config = {
          'options' => options
        }.merge(BrowserConfig::CHROME_DESKTOP)
        initialize_wd_session(headless_config)
      when 'chrome'
        initialize_wd_session(BrowserConfig::CHROME_DESKTOP)
      when 'safari'
        initialize_wd_session(BrowserConfig::SAFARI_DESKTOP)
      when 'chrome-mobile'
        initialize_wd_session(BrowserConfig::CHROME_MOBILE)
      when 'safari-mobile'
        initialize_wd_session(BrowserConfig::SAFARI_MOBILE)
    end
  end
  raise 'You must set the browser type first ex: BROWSER=chrome' if ENV['BROWSER'].nil?
end

After do
  @browser.quit
end