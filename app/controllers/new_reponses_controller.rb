class NewReponsesController < ApplicationController
  before_action :set_new_reponse, only: %i[ show ]

  def new
    @new_reponse = NewReponse.new
  end

  def create
    @new_reponse = NewReponse.new(new_reponse_params)

    respond_to do |format|
      if @new_reponse.save
        
      else
      end
    end
  end


  private
    def new_reponse_params
      params.require(:new_reponse).permit(:name, :phone, :vk, :name_work)
    end
end
