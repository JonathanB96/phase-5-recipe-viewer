class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :recipe_name
      t.string :recipe_steps
      t.string :image_url
      t.integer :user_id
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
