class Participant::Create
  def self.call(participant_params)
    participant = Participant.new(participant_params)

    if participant.save
      participant
    else
      raise StandardError, participant.errors.full_messages.join(", ")
    end
  rescue StandardError => e
    Rails.logger.error("Failed to create participant: #{e.message}")
    nil # Return nil if creation fails
  end
end
