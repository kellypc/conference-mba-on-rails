class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show edit update destroy]

  def index
    @participants = Participant.all
  end

  def show
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant::Create.call(participant_params)

    if @participant.persisted?
      redirect_to @participant, notice: "Participante criado com sucesso."
    else
      @participant = Participant.new(participant_params) # Reinitialize to show errors
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @participant.update(participant_params)
      redirect_to @participant, notice: "Participante atualizado com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @participant.destroy
    redirect_to participants_url, notice: "Participante excluído com sucesso."
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:name, :email)
  end
end
