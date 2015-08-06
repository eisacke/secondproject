class SnippetsController < ApplicationController
	before_action :set_snippet, only: [:show, :edit, :update]	
	load_and_authorize_resource

	def index
		@snippets = Snippet.all
		@search = Snippet.search(params[:q])
		@snippets = @search.result(distinct: true)
		# redirect_to :back
	end

	def show
		# redirect_to :back
	end

	def new
		@category_options = Category.all.map {
			|c| [c.language, c.id]
		}
		@snippet = Snippet.new
	end

	def edit
		@category_options = Category.all.map {
			|c| [c.language, c.id]
		}
		@snippet = Snippet.find(params[:id])
	end

	def create
		params[:snippet][:user_id] = current_user.id
		@snippet = Snippet.new(snippet_params)
		respond_to do |format|
			if @snippet.save
				format.html { redirect_to @snippet, notice: 'snippet was successfully created.' }
				format.json { render :show, status: :created, location: @snippet }
			else
				format.html { render :new }
				format.json { render json: @snippet.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@snippet.destroy
		respond_to do |format|
			format.html {redirect_to snippets_url}
			format.json {head :no_content}
		end
	end

	def update
		respond_to do |format|
			if @snippet.update(snippet_params)
				format.html {redirect_to @snippet}
				format.json {render :show, status: :ok, location: @snippet}
			end
		end
	end

	private
	def  set_snippet
		@snippet = Snippet.find(params[:id])
	end

	def snippet_params
		params.require(:snippet).permit(:contents, :search_terms, :name, :user_id, :category_id)
	end

end
