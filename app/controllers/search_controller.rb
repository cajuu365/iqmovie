class SearchController < ApplicationController
  def create
    keyword_movie = "%#{params[:name]}%"
    @movies = Movie.where("title LIKE ? OR summary LIKE ?", keyword_movie,keyword_movie)

    respond_to do |f|
      f.html { redirect_to root_path }
      f.json { render json: @movies }
      f.js
    end
  end  
end