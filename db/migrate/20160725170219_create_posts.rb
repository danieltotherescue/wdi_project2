class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.text :content
      t.string :category
      t.datetime :occured
      t.string :performer_website
      t.string :performer_info
      t.references :seeker, index: true, foreign_key: true
      t.string :image

      t.timestamps null: false
    end
  end
end
