module Participant
  class Create
    # This service object is responsible for creating a participant.
    # It encapsulates the logic of participant creation and handles errors.
    # It uses the Interactor gem to provide a clean interface for calling the service.
    include Interactor

    def call(participant_params)
      participant = Participant.new(context.params)

      if participant.save
        context.participant = participant
      else
        context.fail!(error: participant.errors.full_messages.to_sentence)
      end
    end
  end
end
