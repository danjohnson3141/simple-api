class HelloController < ApplicationController

	User = Struct.new(:first_name, :last_name) do
		
	end

  # GET /app_emails
  def index
  	posts = {t: "a", t: 'b'}
  	# sample = {user: {first_name: "Dan", last_name: "Johnson", posts}}
    render json: posts
  end
end