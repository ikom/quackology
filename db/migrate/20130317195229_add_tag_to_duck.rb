class AddTagToDuck < ActiveRecord::Migration
  def change
  	add_column :ducks, :tag, :string
  end
end
