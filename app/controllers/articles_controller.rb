class ArticlesController < ApplicationController  # inherits from application controller
  def show
    @article = Article.find(params[:id]) # A couple of things to note. We use Article.find
    # to find the article we're interested in, passing in params[:id] to get the :id parameter
    # from the request. We also use an instance variable (prefixed with @) to hold a reference
    # to the article object. We do this because Rails will pass all instance variables to the 
    # view.

  end

  def new
  end

  def create
    @article = Article.new(article_params) # Article.new is capitalized above, whereas most other references to articles in this guide have used lowercase. In this context, we are referring to the class named Article that is defined in app/models/article.rb. Class names in Ruby must begin with a capital letter.

    @article.save
    redirect_to @article
  #   Here's what's going on: every Rails model can be initialized with its
  #   respective attributes, which are automatically mapped to the respective
  #   database columns. In the first line we do just that (remember that
  #   params[:article] contains the attributes we're interested in). Then,
  #   @article.save is responsible for saving the model in the database.
  #   Finally, we redirect the user to the show action, which we'll define
  #   later.
   end

   private
   def article_params
     params.require(:article).permit(:title, :text)
   end
end


# create the controller by running $ bin/rails generate controller Articles
# inside class you'll define methods that will become actions for this controller
# These actions will perform CRUD operations on articles within system
