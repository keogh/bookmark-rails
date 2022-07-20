class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to bookmarks_path, notice: "Bookmark was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to bookmarks_path, notice: "Bookmark was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @quote.destroy
    redirect_to bookmarks_path, notice: "Bookmark was successfully destroyed."
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params
      .require(:bookmark)
      .permit(:url, :title, :description, :is_private, :read_later)
  end
end