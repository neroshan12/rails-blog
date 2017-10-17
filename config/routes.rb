Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles # In the Blog application, you will
  # now create a new resource. A resource is the term used
  # for a collection of similar objects, such as articles,
  # people or animals. You can create, read, update and
  # destroy items for a resource and these operations are
  # referred to as CRUD operations.

# Rails provides a resources method which can be used to declare a standard
# REST resource. You need to add the article resource to the config/routes.rb
# so the file will look as follows:



  root 'welcome#index' # root 'welcome#index' tells
  # Rails to map requests to the root of the application
  # to the welcome controller's index action and get
  # 'welcome/index' tells Rails to map requests to
  # http://localhost:3000/welcome/index to the welcome
  # controller's index action.
end

# This is your application's routing file which
# holds entries in a special DSL (domain-specific
# language) that tells Rails how to connect
# incoming requests to controllers and actions.
# Edit this file by adding the line of code root
# 'welcome#index'.
