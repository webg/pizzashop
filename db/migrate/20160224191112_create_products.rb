class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |i|
  		i.string :title
  		i.text :discription
  		i.decimal :size
  		i.decimal :price
  		i.boolean :is_spicy
  		i.boolean :is_veg
  		i.boolean :is_best_offer
  		i.string :urlimage

  		i.timestamps


  	end
  end
end
