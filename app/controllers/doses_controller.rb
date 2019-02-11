class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[@dose.id])
    @dose = Dose.delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

