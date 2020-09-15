class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :reaction
      t.references :likeable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
