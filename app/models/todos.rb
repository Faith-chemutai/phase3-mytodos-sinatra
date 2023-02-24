#class inherits from the ActiveRecord::base class which provides it with a number of methods for interacting with a database.
class Todo < ActiveRecord::Base
    enum :status, [ :CREATED, :ONGOING, :COMPLETED, :CANCELLED ]
end