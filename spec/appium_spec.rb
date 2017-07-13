require 'spec_helper'


describe 'Im going to test stuff' do
    
    before(:all) do
        @browser = Appium::Driver.new(desired_capabilities)
        @browser.start_driver
        Appium.promote_appium_methods(RSpec::Core::ExampleGroup)


    end

    after(:all) do
        driver.quit
    end

   

    it 'should open app' do
        expect(find_element(:id,'com.example.android.contactmanager:id/addContactButton').displayed?).to be true 
    end 

    it 'should click add contact' do
        (find_element(id:'com.example.android.contactmanager:id/addContactButton')).click
    end 

    it 'should insert keys in contact name' do
        (find_element(id:'com.example.android.contactmanager:id/contactNameEditText')).send_keys "Rick"
    end
    
    it 'should insert keys to phone' do
        (find_element(id:'com.example.android.contactmanager:id/contactPhoneEditText')).send_keys "07387643901"

    end

    it 'should go back' do
        @browser
    end


    it 'test stuff' do
        binding.pry
    end
end

# adb install ~/Downloads/simple_bank.apk