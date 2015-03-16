class UserWantedBook < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :wanted_book_id
end
