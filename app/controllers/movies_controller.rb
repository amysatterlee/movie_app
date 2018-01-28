class MoviesController < ApplicationController
  before_action :get_movie, only: [:show, :edit, :update]

  def index
    @movies = Movie.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def new
    @movie = Movie.new
  end

  def update
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :summary, :release_date)
    end

    def get_movie
      @movie = Movie.find(params[:id])
    end
end
