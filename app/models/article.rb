class Article < ApplicationRecord
  validates :title, presence: true,
                  length: { minimum: 5 }
end





#  Article class inherits from ApplicationRecord. ApplicationRecord inherits from
#  ActiveRecord::Base which supplies a great deal of functionality to your Rails
#  models for free, including basic database CRUD (Create, Read, Update, Destroy)
#  operations, data validation, as well as sophisticated search support and the
#  ability to relate multiple models to one another.
