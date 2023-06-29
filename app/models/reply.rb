# frozen_string_literal: true

class Reply < ApplicationRecord
  belongs_to :chat
  belongs_to :reply, optional: true
end
