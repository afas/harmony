class Post < ActiveRecord::Base
  attr_accessible :body, :lang, :short, :title
end
