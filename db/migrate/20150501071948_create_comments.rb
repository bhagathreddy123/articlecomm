class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :context
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
