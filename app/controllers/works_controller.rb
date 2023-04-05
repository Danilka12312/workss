class WorksController < ApplicationController
  before_action :set_work, only: %i[ show ]

  def show
    @city  = Work.find(params[:id]).name
    @home_active = 'active'
    @new_reponse = NewReponse.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end
end
