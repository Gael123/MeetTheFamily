class CreateRelationshipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :relationship_types do |t|
      t.string :forward_name
      t.string :backward_name

      t.timestamps
    end
  end
end
