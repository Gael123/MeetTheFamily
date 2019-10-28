class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :relationship_type
      t.references :person
      t.references :related_person

      t.timestamps
    end

  end
end
