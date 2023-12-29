class Message < ApplicationRecord
    after_create_commit { message_broadcast }

    private

    def message_broadcast
        ActionCable.server.broadcast("MessagesChannel", {
            id:,
            body:
        })
    end
end
