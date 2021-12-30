class CreatePunktraits < ActiveRecord::Migration[6.1]
  def change
    create_table :punktraits do |t|
      t.references :cryptopunk, null: false, foreign_key: true
      t.references :trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
