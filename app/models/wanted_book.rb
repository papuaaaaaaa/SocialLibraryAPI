class WantedBook < ActiveRecord::Base
  belongs_to :wanted_book_status_id
  belongs_to :book_id
end
