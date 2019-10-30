class AddAncestryToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :ancestry, :string
    add_index :people, :ancestry
  end
end
