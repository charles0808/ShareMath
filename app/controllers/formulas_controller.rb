class FormulasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :require_owner, only: [:destroy]

  def index
    @formulas = Formula.all
  end

  def show
    @formula = Formula.find(params[:id])
  end

  def new
    @formula = Formula.new
  end

  def edit
    @formula = Formula.find(params[:id])
  end

  def create
    params = forumla_params
    params[:user] = current_user
    @formula = Formula.new(params)
    @formula.save
    redirect_to @formula
  end

  def update
    @formula = Formula.find(params[:id])

    if @formula.update(forumla_params)
      redirect_to @formula
    else
      render 'edit'
    end
  end

  def destroy
    Formula.destroy(params[:id])
    redirect_to root_path
  end

  private
  def forumla_params
    params.require(:formula).permit(:title, :expression, :content)
  end

  def require_owner
    if current_user != Formula.find(params[:id]).user
      redirect_to root_path
    end
  end
end
