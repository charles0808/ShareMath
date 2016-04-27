class FormulasController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :star, :unstar]
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
    params[:user] = current_user || User.anonymous
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

  def star
    formula = Formula.find(params[:id])
    current_user.star(formula)
    redirect_to formula_path(formula)
  end

  def unstar
    formula = Formula.find(params[:id])
    current_user.unstar(formula)
    redirect_to formula_path(formula)
  end

  def search
    @formulas = Formula.search(params[:q])
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
