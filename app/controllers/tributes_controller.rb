class TributesController < ApplicationController

  def index
    @tributes = Tribute.all
    render :index
  end  

  def show
    render :show
  end

end  