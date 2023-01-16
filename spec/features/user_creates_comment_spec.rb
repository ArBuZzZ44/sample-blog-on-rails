require "rails_helper"

feature "Article Creation" do 
  before(:each) do 
    sign_up
  end

  scenario "allows user to visit article#index" do
    create_article

    visit articles_path

    expect(page).to have_content 'Added at'
  end

  scenario "allows user to click on the link Show" do
    create_article
    
    visit articles_path

    find_link('Show').click

    expect(page).to have_content 'Write your comment!'
  end
end