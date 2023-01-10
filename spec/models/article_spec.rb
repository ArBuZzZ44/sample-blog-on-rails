require "rails_helper"

describe Article do 
	describe "validations" do
		it {should validate_presence_of :title}
		it {should validate_presence_of :text}
	end

	describe "associations" do 
		it {should have_many :comments} #Для тестирования has_many используется have_many из-за грамматики
	end

	describe "#subject" do 
		it "returns the article title" do 
			#Создаем объект article хитрым способом
			article = create(:article, title: 'Lorem ipsum') #Создаем объект с помощью factoryBot, не трогая базу данных
			
			#Assert, проверка
			expect(article.subject).to eq 'Lorem ipsum'
		end
	end
end
