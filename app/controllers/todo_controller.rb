#a class that inherits the sinatra::base class and defines a single route using the get method
class TodoController < Sinatra::Base

    get '/' do#root path of the application , the block code within the get will be executed
        "Our very first sinatra"
    end

    post '/todos/create' do #(adding data using a post request)
         data = JSON.parse (request.body.read)
         
        begin
         # approach 1 (individual columns)
         today = Time.now
        #  title = data["title"]
        #  description = data["description"]
        #  todo = Todo.create(title: title, description: descrption, createdAt: today)
        #  todo.to_json

         #approach 2 (hash or column)
         data["createdAt"] = today
         todo = Todo.create(data)
         todo.to_json
        rescue => e
            {
                error: "an error ocurres while creating a new to do"
            }.to_json
        end
end
end