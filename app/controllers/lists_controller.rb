class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path(@list.id)
  end

  def show
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:place, :date, :gender, :purpouse, :weather)
  end
end
