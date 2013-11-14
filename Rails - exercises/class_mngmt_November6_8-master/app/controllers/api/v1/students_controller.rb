class Api::V1::StudentsController < ApiController

 def index
  render json: Student.all.to_json
 end
end