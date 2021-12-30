class CreateBios < ActiveRecord::Migration[6.1]
  def change
    create_table :bios do |t|
      t.string :name
      t.string :story
      t.references :cryptopunk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
