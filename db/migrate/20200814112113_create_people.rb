class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
