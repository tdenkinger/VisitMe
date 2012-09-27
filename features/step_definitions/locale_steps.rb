class Locale

end

Given /^I add a new locale$/ do
  loc = Locale.new
  loc.add({name: "Test Place", address: "1234 Main Street"})
  loc.save!
end

When /^I request that locale$/ do

end

Then /^I see the locale$/ do
    pending # express the regexp above with the code you wish you had
end
