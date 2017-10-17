class ArticlesController < ApplicationController  # inherits from application controller
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id]) # A couple of things to note. We use Article.find
    # to find the article we're interested in, passing in params[:id] to get the :id parameter
    # from the request. We also use an instance variable (prefixed with @) to hold a reference
    # to the article object. We do this because Rails will pass all instance variables to the
    # view.

  end

  def new
    @article = Article.new
    # With the validation now in place, when you call @article.save on an invalid
    # article, it will return false. If you open app/controllers/articles_controller.rb
    # again, you'll notice that we don't check the result of calling @article.save
    # inside the create action. If @article.save fails in this situation, we need
    # to show the form back to the user.
  end

  def create
    @article = Article.new(article_params) # Article.new is capitalized above, whereas most other references to articles in this guide have used lowercase. In this context, we are referring to the class named Article that is defined in app/models/article.rb. Class names in Ruby must begin with a capital letter.

    if @article.save
      redirect_to @article
  #   Here's what's going on: every Rails model can be initialized with its
  #   respective attributes, which are automatically mapped to the respective
  #   database columns. In the first line we do just that (remember that
  #   params[:article] contains the attributes we're interested in). Then,
  #   @article.save is responsible for saving the model in the database.
  #   Finally, we redirect the user to the show action, which we'll define
  #   later.
    else
      render 'new'
#       The new action is now creating a new instance variable called @article,
#       and you'll see why that is in just a few moments.
# Notice that inside the create action we use render instead of redirect_to
#  when save returns false. The render method is used so that the @article object
#     is passed back to the new template when it is rendered. This rendering is
#     done within the same request as the form submission, whereas the redirect_to
#     will tell the browser to issue another request.


    end
   end

   private
   def article_params
     params.require(:article).permit(:title, :text)
   end
end


# create the controller by running $ bin/rails generate controller Articles
# inside class you'll define methods that will become actions for this controller
# These actions will perform CRUD operations on articles within system
