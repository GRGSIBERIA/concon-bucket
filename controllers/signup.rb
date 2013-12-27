#-*- encoding: utf-8
require 'digest/sha2'

# ユーザ登録処理
class Signup
  # ==== Args
  # [params]
  #   POSTで得られたパラメータ
  def initialize(params)
    @user_id  = params[:user_id]
    @password = params[:password]
    @password = encrypt(@user_id, @password)

    @db = DynamoDB::init
    @table = db.tables["user-table"]
  end

  # ユーザ登録を実行する
  # ==== Returns
  # 登録できたユーザ，ただし既にuser_idが存在すればnilが戻る
  def done
    if @table.items.where(user_id: @user_id).count > 0 then
      # ユーザが存在する
      return nil
    end

    @table.items.create(user_id: @user_id, password: @password)
  end

  # ==== Args
  # [user_id]
  #   ユーザID
  # [password]
  #   パスワード
  def encrypt(user_id, password)
    Digest::SHA256.hexdigest(user_id + password)
  end
end