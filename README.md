# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Some Steps

Rails API

—> Step One
	rails Appname —api

--> Step Two
	rails scaffold Post title:string

—> Step 3
	rake db:migrate		

—> Step 4
	Dir change
		>  Routes: change routes to 
				namespace :api do
    					namespace :v1 do
      						resources :shops
      					resources :products
    				end
		> Controllers: 
				Add —>  Api::V1:: <— to class

Step 5
	Check if routes working using postman
	feed the data base in Seed. Then use rake db:seed

Step 6
	Create another scaffold Comments
	
Step 7
	> Model
		Post
			has_many :comments, dependent: :destroy
		Comment
			    belongs_to :post
	Make schema saying 		rails g migration add_post_id_to_comments post_id:integer
		
		Rake db:migrate

Step 8
	> Routes:
		      resources :shops do
        			get 'products', to: 'shops#products_of_this'
      			end
Step 9
	Make the method Products_of_this on shop controller
		    @shop = Shop.find(params[:shop_id])
    			render json: @shop.products





