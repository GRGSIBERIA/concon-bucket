#-*- encoding: utf-8

class Signup
  def self.save(params)
    user_id  = params[:user_id]
    password = params[:password]

    db = DynamoDB.new
  end
end