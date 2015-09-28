module Loggable
  extend ActiveSupport::Concern
  included do
    after_validation :check_incidents
    after_rollback :log_incidents
  end
  
  @last_validation_messages = nil
  
  def check_incidents
    @last_validation_messages = self.errors.full_messages
  end
  
  def log_incidents
      Incident.log(self.class.name, @last_validation_messages)
  end
end