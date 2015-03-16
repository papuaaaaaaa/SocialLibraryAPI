class ProvidedBook < ActiveRecord::Base
  belongs_to :provided_book_status_id
  belongs_to :book_id
end
