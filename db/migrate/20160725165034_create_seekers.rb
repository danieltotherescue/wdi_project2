class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :image
      t.boolean :performer

      t.timestamps null: false
    end
  end
end
