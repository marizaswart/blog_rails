Given("I visit the landing page") do
 visit root_path
end

When("I click {string} link") do |link|
  click_link link
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field.downcase, with: value
end

When("I click {string} button") do |button|
  click_button button
end

Then("I should be on {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end
