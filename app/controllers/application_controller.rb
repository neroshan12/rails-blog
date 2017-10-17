class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# In this case, it's the articles/new template. Rails will
# first look for this template. If not found, then it will
# attempt to load a template called application/new. It looks
# for one here because the ArticlesController inherits from 
# ApplicationController.
