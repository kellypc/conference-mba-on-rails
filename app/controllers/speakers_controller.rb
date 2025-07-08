class SpeakersController < ApplicationController
  before_action :set_speaker, only: %i[show edit update destroy]

  def index
    @speakers = Speaker.all
  end

  def show
  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker = Speaker.new(speaker_params)
    if @speaker.save
      redirect_to @speaker, notice: "Palestrante criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @speaker.update(speaker_params)
      redirect_to @speaker, notice: "Palestrante atualizado com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @speaker.destroy
    redirect_to speakers_url, notice: "Palestrante excluído com sucesso."
  end

  private

  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  def speaker_params
    params.require(:speaker).permit(:name, :bio)
  end
end
