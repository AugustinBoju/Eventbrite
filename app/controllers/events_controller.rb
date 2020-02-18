class EventsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @events=Event.all
  end

  def show
    @event=Event.find(params[:id])
    @admin=User.where(user_id: params[:id])
  end

  def new
    @event=Event.new
  end

  def create
    @event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], location: params[:location], admin: current_user)
    if @event.save
      redirect_to event_path(@event.id)
      flash[:success] = "L'évènement a été ajouté avec succès !"
    else
      puts "Ca n'a pas fonctionné désolé"
      render :new
    end
  end

  private
  def authenticate_user
    unless current_user
      flash[:danger] = "Oops! Tu dois être connecté pour faire cela"
      redirect_to new_user_session_path
    end
  end
end
