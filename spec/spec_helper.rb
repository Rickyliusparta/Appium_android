require 'rspec'
require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation 
  end 

  def desired_capabilities
    {caps:{
    "platformName": "Android",
    "platformVersion": "8.0",
    "deviceName": "emulator-5554",
    "app": "/Users/Tech-A38/Downloads/ContactManager.apk"
}
}
end
