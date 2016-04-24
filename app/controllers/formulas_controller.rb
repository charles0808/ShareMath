class FormulasController < ApplicationController
  def show
    @article = Formula.find(params[:id])
  end

  def new
  end

  def create
    @formula = Formula.new(forumla_params)
    @formula.save
    redirect_to @formula
  end

  private
  def forumla_params
    params.require(:formula).permit(:title, :expression, :content)
  end
end
