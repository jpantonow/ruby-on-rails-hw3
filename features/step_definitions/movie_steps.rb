require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given('I am on the RottenPotatoes home page') do
  visit '/movies' # Write code here that turns the phrase above into concrete actions
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end

Then(/^I should be on the Create New Movie page$/) do
  page.find('h1').text == 'Create New Movie'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in('movie_'+field, :with => value)
end

When(/^I select "([^"]*)" from "([^"]*)"$/) do |rating, rating_list|
  select(rating, :from => "movie_#{rating_list}")
end

When(/^I press "([^"]*)"$/) do |button|
  button = find_button(button)
  button.click
end

Then(/^I should be on the RottenPotatoes home page$/) do
  page.title == "RottenPotatoes!"
end

Then(/^I should see "([^"]*)"$/) do |something|
  assert page.has_content?(something)
end

Given("the following movies exist") do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Given("the following movies exist:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I check the following ratings: PG, R") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I uncheck the following ratings: PG{int}, G, NC{int}") do |int, int2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should not see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I uncheck the following ratings: PG, G, R, PG{int}, NC{int}") do |int, int2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I check the following ratings: PG, G, R, PG{int}, NC{int}") do |int, int2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see all of the movies") do
  pending # Write code here that turns the phrase above into concrete actions
end

# ''
# Given('I press {string}') do |string|
#   click_button(string) # Write code here that turns the phrase above into concrete actions
# end

# Given('I follow {string}') do |string|
#   click_link(link)
# end
# #Then /I should see "(.*)" before "(.*)"/ do |e1,e2|
# #  assert page.body.index(e1) < page.body.index(e2)
# #end
# Then ('I should see {string} before {string}') do |movie1,movie2|
#   assert page.body.index(movie1)
# end
#
#Given(/^I (un)?check the following ratings: (.*)/) do |uncheck, rating_list|
#  rating_list.split(",").each do |rating|
#    rating = rating.strip
#    rating = "ratings_" + rating
#    if uncheck == "un"
#      uncheck(rating)
#    else
#      check(rating)
#    end
#  end
#end
#
#Then /I should see (all|none) of the movies/ do |amount|
#  rows = page.body.scan(/<tr>/).length - 1
#  if amount == "none"
#    assert page.body.scan(/checked/).length == 0
#  else
#    assert rows = Movie.all.length
#  end
#end
#
