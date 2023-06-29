# frozen_string_literal: true

class CreateFirsts < ActiveRecord::Migration[7.0]
  def change
    create_table :firsts do |t|
      t.string :name

      t.timestamps
    end
  end
end
