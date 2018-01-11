Given("the following articles exists in the system") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:article, hash)
  end
end

Given("I click on {string}") do |element|
  click_link_or_button element
end

Then("I should be on the {string} article page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(current_path).to eq article_path(article)
end