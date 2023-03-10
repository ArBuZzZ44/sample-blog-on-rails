require "rails_helper"

feature "Article Creation" do 
  before(:each) do 
    sign_up
    create_article
  end

  scenario "allows user to click on the link Edit" do 
    visit articles_path

    find_link('Edit').click

    expect(page).to have_current_path(edit_article_path(Article.last))
  end

  scenario "allows user to edit the article" do 
    visit edit_article_path(Article.last)

    fill_in :article_title, :with => 'HeyHey'
    fill_in :article_text, :with => 'HoHo'

    click_button 'Save Article'

    expect(page).to have_current_path(article_path(Article.last))
  end
end