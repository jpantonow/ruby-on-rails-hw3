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

Given("the following movies exist:") do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Given(/^I check the following ratings: (.*)$/) do |ratings|
  ratings.split(', ').each do |rating|
    check("ratings[#{rating}]")
  end
end

Given(/^I uncheck the following ratings: (.*)$/) do |ratings|
  ratings.split(', ').each do |rating|
    uncheck("ratings[#{rating}]")
  end
end

Then("I should not see {string}") do |movie|
  page.has_no_content? movie
end



Then("I should see all of the movies") do
  page.all("table#movies tbody tr").count == Movie.count
end

Given("I check all ratings") do
  ratings = page.all("#ratings_form checkbox")
  ratings.each do |rating|
      check(rating)
  end
end

Then("I should see {string} before {string}") do |movie1, movie2|
  page.body.index(movie1) < page.body.index(movie2)
end
