class Request < ActiveRecord::Base
  belongs_to :customer
  belongs_to :driver
end
