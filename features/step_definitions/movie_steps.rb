require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /the following movies exist/ do |movies_table|
  # table is a Cucumber::MultilineArgument::DataTable
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Given(/^I (un)?check the following ratings: (.*)/) do |uncheck, rating_list|
  rating_list.split(",").each do |rating|
    rating = rating.strip
    rating = "ratings_" + rating
    if uncheck == "un"
      uncheck(rating)
    else
      check(rating)
    end
  end
end

Then /I should see (all|none) of the movies/ do |amount|
  rows = page.body.scan(/<tr>/).length - 1
  if amount == "none"
    assert page.body.scan(/checked/).length == 0
  else
    assert rows = Movie.all.length
  end
end
