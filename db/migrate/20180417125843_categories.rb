class Categories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
        t.text :categorie_title
        t.text :categorie_description
    end
  end
end
