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
      render json: {error: "Note not found"}, status: 404
    end
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render json: {error: "Failed to create Note" }
    end
  end

  def update
    @note = Note.find_by(id: params[:id])

    if @note
      @note.update(note_params)
      render json: @note
    else
      render json: {error: "Update Failed"}
    end
  end

  def destroy
    @note = Note.find_by(id: params[:id])

    if @note
      @note.delete
      render json: @note
    else
      render json: {error: "Delete Failed"}
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :content, :category_id)
  end
end
