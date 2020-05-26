class MoviesController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	# GET /movies
	def index
		@movies = Movie.all
	end

	# GET /movies/:id
	def show
		@movie = Movie.find(params[:id])   
	end

	# GET /movies/:id/edit
	def edit
		@movie = Movie.find(params[:id])
	end

	# GET /movies/new
	def new
		@movie = Movie.new
	end

	# POST /movies
	def create
		@movie = current_user.movies.new(movie_params)       
		if @movie.save
		redirect_to @movie
		else 
			render:new
		end
	end

	# DELETE /movies/:id
	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to @movie
	end

	# PATCH /movies/:id
	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params)
			redirect_to @movie
		else
			render :edit
		end
	end

	private

	def movie_params
		params.require(:movie).permit(
			:title,
			:summary,
			:vote_counting, 
			:poster_url, 
			:release_date
		)
	end
end