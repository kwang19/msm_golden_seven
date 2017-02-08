class DirectorsController < ApplicationController
  def index

    @list_of_directors = Director.all
  end

  def show
    m = Director.find(params[:id])
    @name = m.name
    @bio = m.bio
    @image_url = m.image_url
    @dob = m.dob
    @id = m.id
    render("/directors/show.html.erb")
  end
  def edit_form
    m = Director.find(params[:id])
    @name = m.name
    @bio = m.bio
    @image_url = m.image_url
    @dob = m.dob
    @id = m.id
    render("/directors/edit_director.html.erb")
  end
  def update_row
    m =  Director.find(params[:id])
    m.name =params[:name]
    m.bio =params[:bio]
    m.image_url=params[:image_url]
    m.dob = params[:dob]
    m.save
    redirect_to("http://localhost:3000/directors/"+ params[:id])
  end
  def new_form
    render("/directors/new_director.html.erb")
  end
  def create_row
    m = Director.new
    m.name =params[:name]
    m.bio =params[:bio]
    m.image_url=params[:image_url]
    m.dob = params[:dob]
    m.save

    redirect_to("http://localhost:3000/directors")
  end
  def delete_director
    m = Director.find(params[:id]).destroy
    redirect_to("http://localhost:3000/directors")
  end
end
