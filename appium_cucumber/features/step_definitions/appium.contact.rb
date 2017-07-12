Given(/^i have device available$/) do
	find_element(:id,'com.example.android.contactmanager:id/addContactButton').displayed?
end

Then(/^can open the contact manager app$/) do
	find_element(id:'com.example.android.contactmanager:id/addContactButton').click
end