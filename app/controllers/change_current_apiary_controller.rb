class ChangeCurrentApiaryController < ApplicationController

  def change_current_apiary
    apiary = Apiary.find(params[:pid])
    current_beekeeper.current_apiary_id = apiary.id
    current_beekeeper.save!
    redirect_to :back
  end

end
