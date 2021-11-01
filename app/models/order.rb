class Order < ApplicationRecord
    belongs_to :user
    belongs_to :food

    after_commit :create_notifications, on: [:create]
    def create_notifications
      Notification.create(
        notify_type: 'order',
        actor: self.user,
        user: self.user,
        target: self)
    end
  
    def start_time
        self.created_at
    end
    def start_time
        self.updated_at
    end
end
