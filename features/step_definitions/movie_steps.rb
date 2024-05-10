#You can implement step definitions for undefined steps with these snippets:

Given(/^the following movies exist:$/) do |movies_table|
  # table is a Cucumber::MultilineArgument::DataTable
  movies_table.hashes.each do |movie|
    page.should have_content movie # Write code here that turns the phrase above into concrete actions
  end
end

Given(/^I am on the RottenPotatoes home page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I check the following ratings: PG, R$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I uncheck the following ratings: PG\-(\d+), G, NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I uncheck the following ratings: PG, G, R, PG\-(\d+), NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I check the following ratings: PG, G, R, PG\-(\d+), NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see all of the movies$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


############### ADDMOVIE.FEATURE######################
Given(/^I am on the RottenPotatoes home page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I check the following ratings: PG, R$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I uncheck the following ratings: PG\-(\d+), G, NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I uncheck the following ratings: PG, G, R, PG\-(\d+), NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I check the following ratings: PG, G, R, PG\-(\d+), NC\-(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see all of the movies$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

###############SORT_MOVIE.FEATURE#######################33
Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the RottenPotatoes home page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I check all ratings$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I follow "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end
