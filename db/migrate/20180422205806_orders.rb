class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
        t.text :ordser_name
        t.text :ordser_email
        t.text :ordser_phone
        t.text :ordser_goods
        t.timestamps
    end
  end
end