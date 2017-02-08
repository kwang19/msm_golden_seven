class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end
  def show
    m = Movie.find(params[:id])
    @title = m.title
    @year = m.year
    @image_url = m.image_url
    @duration = m.duration
    @description = m.description
    @id = m.id
    render("/movies/show.html.erb")
  end
  def edit_form
    m = Movie.find(params[:id])
    @title = m.title
    @year = m.year
    @image_url = m.image_url
    @duration = m.duration
    @description = m.description
    @id = m.id
    render("/movies/edit_movie.html.erb")

  end
  def update_row
    m =  Movie.find(params[:id])
    m.title =params[:title]
    m.year =params[:year]
    m.image_url=params[:image_url]
    m.duration = params[:duration]
    m.description =  params[:description]
    m.save
    redirect_to("http://localhost:3000/movies/"+ params[:id])

  end
  def new_form
    render("/movies/new_movie.html.erb")
  end
  def create_row
    m = Movie.new
    m.title =params[:title]
    m.year =params[:year]
    m.image_url=params[:image_url]
    m.duration = params[:duration]
    m.description =  params[:description]
    m.save

    redirect_to("http://localhost:3000/movies")
  end
  def delete_movie
    m = Movie.find(params[:id]).destroy
      redirect_to("http://localhost:3000/movies")
  end
end
