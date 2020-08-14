class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(strong_params)
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
    end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    redirect_to cocktail_path(@cocktail)
  end

  private 

  def strong_params
    params.require(:dose).permit(:description)
  end
end
