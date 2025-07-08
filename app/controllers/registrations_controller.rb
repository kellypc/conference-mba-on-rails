class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to @registration.talk, notice: "Inscrição realizada com sucesso."
    else
      redirect_to talks_path, alert: "Erro ao realizar inscrição."
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to talks_path, notice: "Inscrição cancelada com sucesso."
  end

  private

  def registration_params
    params.require(:registration).permit(:participant_id, :talk_id)
  end
end
