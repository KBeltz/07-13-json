get "/api/assignments" do
  erb :"/assignments/all"
end

get "/api/assignments/:id" do
  erb :"/assignments/single"
 end
