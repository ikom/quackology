class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :ducks, :type, :name
  end
end
