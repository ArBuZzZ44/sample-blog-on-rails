require "rails_helper"

feature "Article Creation" do 
  before(:each) do 
    sign_up
    create_article
  end

  scenario "allows user to visit article#index" do  
    visit articles_path

    expect(page).to have_content 'Added at'
  end

  scenario "allows user to click on the link Show" do
    visit articles_path

    find_link('Show').click

    expect(page).to have_current_path(article_path(Article.last))
  end

  scenario "allows user to create comment" do 
    visit article_path(Article.last)

    fill_in :comment_author, :with => 'John'
    fill_in :comment_body, :with => 'hahaha'

    click_button 'Create Comment'

    expect(page).to have_content 'Comments'
  end
end