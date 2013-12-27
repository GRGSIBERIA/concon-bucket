#-*- encoding: utf-8
require "sinatra"
require "sinatra/reloader"
require "aws-sdk"
require "slim"

require "./dynamodb.rb"

class Application < Sinatra::Base
  set :sessions, true

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    slim :index
  end

  # ログイン
  get '/signin' do
    slim :signin
  end

  # ユーザ登録
  get '/signup' do
    slim :signup
  end

  # ユーザ登録処理
  post '/signup_procedure' do

  end

  # ユーザのログイン認証
  post '/authenticate_user' do

  end
end

Application.run! :host => 'localhost', :port => 4567