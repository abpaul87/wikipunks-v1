class CreateCryptopunks < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptopunks do |t|
      t.string :punktype
      t.string :gender
      t.string :skintone
      t.integer :traitcount
      t.string :accessories

      t.timestamps
    end
  end
end
