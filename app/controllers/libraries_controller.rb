class LibrariesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @library = Library.new
  end

  def create

  end
