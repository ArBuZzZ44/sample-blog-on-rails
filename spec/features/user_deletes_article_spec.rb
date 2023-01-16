require "rails_helper"

feature "Article Creation" do 
  before(:each) do 
    sign_up
    create_article
  end

  scenario "allows user to delete the article" do 
    visit articles_path 

    click_button 'Delete'
  end
end