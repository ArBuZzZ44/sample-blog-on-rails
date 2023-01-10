require "rails_helper"

describe Article do 
	it {should have_many :comments} #Для тестирования has_many используется have_many из-за грамматики
end
