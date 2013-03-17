class CreateDucks < ActiveRecord::Migration
  def change
    create_table :ducks do |t|
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
