
class ActorsController < ApplicationController
  def index

    @list_of_actors = Actor.all
  end

  def show
    m = Actor.find(params[:id])
    @name = m.name
    @bio = m.bio
    @image_url = m.image_url
    @dob = m.dob
    @id = m.id
    render("/actors/show.html.erb")
  end
  def edit_form
    m = Actor.find(params[:id])
    @name = m.name
    @bio = m.bio
    @image_url = m.image_url
    @dob = m.dob
    @id = m.id
    render("/actors/edit_actor.html.erb")
  end
  def update_row
    m =  Actor.find(params[:id])
    m.name =params[:name]
    m.bio =params[:bio]
    m.image_url=params[:image_url]
    m.dob = params[:dob]
    m.save

    redirect_to("/actors/"+ params[:id])
  end
  def new_form
    render("/actors/new_actor.html.erb")
  end
  def create_row
    m = Actor.new
    m.name =params[:name]
    m.bio =params[:bio]
    m.image_url=params[:image_url]
    m.dob = params[:dob]
    m.save

    redirect_to("/actors")
  end
  def delete_actor
    m = Actor.find(params[:id]).destroy
    redirect_to("/actors")
  end
end
