class MovieshowsController < ApplicationController
  include HTTParty
  def index
    @top_shows = []
    1.times do |t|
      response = HTTParty.get("https://api.themoviedb.org/3/discover/movie?api_key=#{ENV["SECRET_API_KEY"]}&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false")
      response["results"].each do |show|
        @top_shows.push(show)
      end
    end
  end

  def show
    @show = {}
    response = HTTParty.get("https://api.themoviedb.org/3/movie/#{params[:movie_id]}?api_key=#{ENV["SECRET_API_KEY"]}")

    if response["poster_path"].nil?
      @show["poster_path_url"] = "error_image.png"
    else
      @show["poster_path_url"] = "https://image.tmdb.org/t/p/original#{response["poster_path"]}"
    end
    @show["original_title"] = response["original_title"] unless response["original_title"].nil?
    @show["overview"] = response["overview"] unless response["overview"].nil?
    @show["vote_count"] = response["vote_count"].to_s unless response["vote_count"].nil?
    @show["release_date"] = self.fix_date(response["release_date"]) unless response["release_date"].nil?
  end
  
  def search
    response = HTTParty.get("https://api.themoviedb.org/3/search/movie?api_key=#{ENV["SECRET_API_KEY"]}&query=#{params[:query]}&page=1&language=en-US&page=1&include_adult=false")
    @shows = response["results"]
  end

  #from YYYY-MM-DD to MM-DD-YYYY
  def fix_date(date)
    result = date.split("-")
    temp = result[0]
    result[0] = result[1]
    result[1] = result[2]
    result[2] = temp
    result.join("-")
  end

end
