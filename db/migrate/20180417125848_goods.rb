class Goods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
        t.text :good_title
        t.text :good_description
        t.text :good_cat
        t.decimal :good_price
        t.boolean :good_sale
    end
  end
end
