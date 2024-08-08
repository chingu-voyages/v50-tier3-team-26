class TutorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tutor, only: %i[show edit update]

  def new
    @tutor = current_user.build_tutor
  end

  def create
    @tutor = current_user.build_tutor(tutor_params)
    if @tutor.save
      redirect_to @tutor, notice: 'Tutor profile was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tutor.update(tutor_params)
      redirect_to @tutor, notice: 'Tutor profile was successfully updated.'
    else
      render :edit
    end
  end

  def show
  end

  private

  def set_tutor
    @tutor = Tutor.find(params[:id])
  end

  def tutor_params
    params.require(:tutor).permit(:name, :email, :tech_stack, :location, :image_url)
  end
end
