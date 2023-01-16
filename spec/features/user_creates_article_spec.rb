require "rails_helper"

feature "Article Creation" do 
  before(:each) do 
    sign_up
  end

  scenario "allows user to visit new article page" do 
    visit new_article_path
    expect(page).to have_content 'New article'
  end

  scenario "allows user to create article" do
    create_article

    expect(page).to have_content 'Write your comment!'
  end
end
