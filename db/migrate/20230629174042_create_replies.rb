# frozen_string_literal: true

class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.text :body
      t.references :chat, null: false, foreign_key: true
      t.references :reply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
