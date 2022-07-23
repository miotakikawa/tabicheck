class List < ApplicationRecord
  def index
    @list = List.all
  end
end
