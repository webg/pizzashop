class SeedProducts < ActiveRecord::Migration
  def change
  	Product.create :title =>'Hawaiian', :discription =>'This is Hawaiian pizza', :size =>30, :price =>350, :is_spicy =>false, :is_veg =>false, :is_best_offer =>false, :urlimage =>'/images/1.jpg'
	Product.create :title =>'Papperoni', :discription =>'Nice Papperoni pizza', :size =>30, :price =>450, :is_spicy =>false, :is_veg =>false, :is_best_offer =>false, :urlimage =>'/images/2.jpg'
	Product.create :title =>'Vegetarian', :discription =>'Amazing Vegetarian pizza', :size =>30, :price =>400, :is_spicy =>false, :is_veg =>true, :is_best_offer =>false, :urlimage =>'/images/3.jpg'
	Product.create :title =>'MakkaPizza', :discription =>'The BEST pizza', :size =>30, :price =>1000, :is_spicy =>false, :is_veg =>false, :is_best_offer =>true, :urlimage =>'/images/4.jpg'
  end
end
