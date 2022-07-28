class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
     redirect_to list_path(@list.id)
    else
     render :new
    end
  end


  def show
    @list = List.find(params[:id])
  end

  def index
    @list = List.all
  end

  private
  def list_params
    params.require(:list).permit(:place, :date, :gender, :purpouse, :weather)
  end
end
