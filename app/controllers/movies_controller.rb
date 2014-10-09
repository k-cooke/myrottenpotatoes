# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
  # default: render 'new' template
  end

  def create
  @movie = Movie.create!(params[:movie])
  redirect_to movies_path
  end

  def edit
  @movie = Movie.find params[:id]
  end
 
  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end
end
