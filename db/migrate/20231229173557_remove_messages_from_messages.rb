class RemoveMessagesFromMessages < ActiveRecord::Migration[7.1]
  def change
    remove_column :messages, :messages
  end
end
