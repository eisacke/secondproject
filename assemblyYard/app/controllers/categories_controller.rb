class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new category_params
		if @category.save
			redirect_to categorys_path
		else
			render 'new'
		end
	end

	private
	def set_category
		@category = Category.find(params[:id])
	end

	def category_params
		params.require(:category).permit(:type)
	end

end
