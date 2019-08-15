# Keeping the browser configurations in a seperate file makes it easy to add or remove themn without adding code-congestion to other files. 
# These are used in hooks.rb

module BrowserConfig
  CHROME_DESKTOP = {
    'browser' => :chrome,
    'path' => './drivers/macos/chromedriver',
    'window_x' => 969,
    'window_y' => 1134,
    'platform' => 'desktop'
  }
  
  SAFARI_DESKTOP = {
    'browser' => :safari,
    'path' => '/usr/bin/safaridriver',
    'window_x' => 969,
    'window_y' => 1134,
    'platform' => 'desktop'
  }

  CHROME_MOBILE = {
    'browser' => :chrome,
    'path' => './drivers/macos/chromedriver',
    'window_x' => 414,
    'window_y' => 736,
    'platform' => 'mobile',
  }
  
  SAFARI_MOBILE = {
    'browser' => :safari,
    'path' => '/usr/bin/safaridriver',
    'window_x' => 414,
    'window_y' => 736,
    'platform' => 'mobile'
  }
end