class FormulasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @formulas = Formula.all
  end

  def show
    @formula = Formula.find(params[:id])
  end

  def new
  end

  def create
    params = forumla_params
    params[:user] = current_user
    @formula = Formula.new(params)
    @formula.save
    redirect_to @formula
  end

  private
  def forumla_params
    params.require(:formula).permit(:title, :expression, :content)
  end
end
