class AddParentsToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :sex, :string
    add_column :people, :father_id, :integer
    add_column :people, :mother_id, :integer
  end
end
