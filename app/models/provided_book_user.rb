class ProvidedBookUser < ActiveRecord::Base
  belongs_to :provided_book_id
  belongs_to :user_id
end
