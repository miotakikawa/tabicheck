class MemoriesController < ApplicationController
  def new
    @memory= Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user_id = current_user.id
    if @memory.save
      redirect_to memory_path(@memory.id), notice: "You have created book successfully."
    else
      @memories= Memory.all
      render :index
    end
  end

  def index
    @memory = Memory.new
    @memories= Memory.all
  end

  def show
    @memory = Memory.find(params[:id])
    @newmemory = Memory.new
  end

  def edit
    @memory = Memory.find(params[:id])
    if @memory.user == current_user
      render "edit"
    else
      redirect_to memories_path
    end
  end

  def update
    @memory = Memory.find(params[:id])
    if@memory.update(memory_params)
     redirect_to memory_path(@memory.id), notice:"You have created book successfully."
    else
      render :edit
    end
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to books_path
  end

  private

  def memory_params
    params.require(:memory).permit(:title, :body, :image_tag)
  end
end
