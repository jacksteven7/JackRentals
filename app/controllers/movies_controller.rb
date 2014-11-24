class MoviesController < ApplicationController
	def new
		@movie = Movie.new
		@movies = Movie.find(:all)
	end
	def create
		@movie = Movie.new(params[:movie])
		if(@movie.save)
			redirect_to new_movie_path
		end
	end
end
