class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comment
      t.string :name
      t.string :content
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
