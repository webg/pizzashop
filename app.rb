#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end
get '/' do
	@products = Product.all
	erb :index
end

post '/cart' do
	orders_line = params[:orders]
	@items = parser_orders_line orders_line

	@items.each do |item|
		item[0] = Product.find(item[0])
	end
	erb :cart
end

def parser_orders_line orders_line
	s1 = orders_line.split(/,/)

	arr = []

	s1.each do |x| 
		
		s2 = x.split(/\=/)

		s3 = s2[0].split(/_/)

		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]

		arr.push arr2

		end

		return arr

end
