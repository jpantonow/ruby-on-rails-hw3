require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given ('the following movies exist') do |movies_table|
  # table is a Cucumber::MultilineArgument::DataTable
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Given('I am on the RottenPotatoes home page') do
  visit '/movies' # Write code here that turns the phrase above into concrete actions
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end


Given('I press {string}') do |string|
  click_button(string) # Write code here that turns the phrase above into concrete actions
end

Given('I follow {string}') do |string|
  click_link(link)
end
#Then /I should see "(.*)" before "(.*)"/ do |e1,e2|
#  assert page.body.index(e1) < page.body.index(e2)
#end
Then ('I should see {string} before {string}') do |movie1,movie2|
  assert page.body.index(movie1)
end
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
