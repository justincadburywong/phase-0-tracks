
class TodoList

	def initialize(chore_item_1, chore_item_2)
		@chore_item_1 = chore_item_1
		@chore_item_2 = chore_item_2
		@chores = []
		@chores << chore_item_1
		@chores << chore_item_2
	end

	def get_items
		@chores
	end

	def add_item(list_item)
		@chores << list_item
	end

	def delete_item(list_item)
		@chores.delete(list_item)
  end

  def get_item(index)
  	@chores[index]
  end
end
