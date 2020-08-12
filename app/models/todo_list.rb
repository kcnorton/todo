class TodoList < ApplicationRecord
	has_many :todo_items
	validates :title, uniqueness: true
 	validates :description, uniqueness: true
end
