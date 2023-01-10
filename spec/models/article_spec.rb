require "rails_helper"

describe Article do 
	describe "validations" do
		it {should validate_presence_of :title}
		it {should validate_presence_of :text}
	end

	describe "associations" do 
		it {should have_many :comments} #Для тестирования has_many используется have_many из-за грамматики
	end
end
