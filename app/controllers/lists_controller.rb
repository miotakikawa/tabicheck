class ListsController < ApplicationController
  def index
    @list = List.new
  end
  
  def create
    @list = List.save
  end
end
