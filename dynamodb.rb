#-*- encoding: utf-8
require 'aws-sdk'

class DynamoDB
  def self.init
    account = []
    open('./dynamo.conf').each {|x| account << x}.close

    db = AWS::DynamoDB.new(
      :access_key_id => account[0],
      :secret_access_key => account[1])
    unless db.nil? then
      puts "Successfully connect to DynamoDB: #{@db}"
    end
    db
  end
end