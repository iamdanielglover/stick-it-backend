class NotesController < ApplicationController
  def index
    @notes = Note.all

    render json: @notes
  end

  def show
    @note = Note.find_by(id: params[:id])

    if @note
      render json: @note
    else
      render json: {error: "User not found"}, status: 404
    end
  end
end
