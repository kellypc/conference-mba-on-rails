class TalksController < ApplicationController
  before_action :set_talk, only: %i[show edit update destroy]

  def index
    @talks = Talk.all
  end

  def show
  end

  def new
    @talk = Talk.new
    @speakers = Speaker.all
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to @talk, notice: "Palestra criada com sucesso."
    else
      @speakers = Speaker.all
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @speakers = Speaker.all
  end

  def update
    if @talk.update(talk_params)
      redirect_to @talk, notice: "Palestra atualizada com sucesso."
    else
      @speakers = Speaker.all
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @talk.destroy
    redirect_to talks_url, notice: "Palestra excluída com sucesso."
  end

  private

  def set_talk
    @talk = Talk.find(params[:id])
  end

  def talk_params
    params.require(:talk).permit(:title, :description, :speaker_id)
  end
end
