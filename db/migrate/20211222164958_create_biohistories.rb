class CreateBiohistories < ActiveRecord::Migration[6.1]
  def change
    create_table :biohistories do |t|
      t.string :name
      t.string :story
      t.references :bio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
