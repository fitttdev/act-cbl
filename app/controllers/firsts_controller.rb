# frozen_string_literal: true

class FirstsController < ApplicationController
  def new
    @first = First.new
  end

  def index
    @firsts = First.all
  end

  def create
    @first = First.new(first_params)

    if @first.save
      ActionCable.server.broadcast('first_channel', { count: First.count })
      render json: @first, status: :created
    else
      render json: @first.errors, status: :unprocessable_entity
    end
  end

  def first_params
    params.require(:first).permit(:name)
  end
end
