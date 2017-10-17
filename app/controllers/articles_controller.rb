class ArticlesController < ApplicationController  # inherits from application controller
  def new
  end

  def create
    render plain: params[:article].inspect
  end
end

# create the controller by running $ bin/rails generate controller Articles
# inside class you'll define methods that will become actions for this controller
# These actions will perform CRUD operations on articles within system
