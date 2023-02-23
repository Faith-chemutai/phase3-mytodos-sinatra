#a class that inherits the sinatra::base class and defines a single route using the get method
class TodoController < Sinatra::Base

    get '/' do#root path of the application , the block code within the get will be executed
        "Our very first sinatra"
    end

end