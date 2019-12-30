class WelcomesController < ApplicationController
	skip_before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:add_like]
	
	def index
	 	@blogs = Blog.all
	 
  	end

  	def add_like
  		@blog = Blog.find(params[:id])
	    if @blog.likes.create(user_id: current_user.try(:id))
	      render json: {
	        success: true,
	        result: @blog.likes.count
	      }
	    else
	      render json: {
	        success: false,
	        error: @blog.errors.full_messages.join(', ')
	      }
	    end
  	end

end
