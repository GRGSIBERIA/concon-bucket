#-*- encoding: utf-8

class ModelBase
  @primary = Hash.new
  @hash = Hash.new

  def initialize(primary, keys)
    @primary[primary] = nil
    keys.each {|x| @hash[x] = nil }   # とりあえずハッシュを初期化
  end

  # keyとvalueを指定してItemに設定する
  #[key]
  # Itemのキー
  #[value]
  # キーに対応するItemの値
  def set(key, value)
    if @hash.has_key?(key) then
      @hash[key] = value
    else
      nil
    end
  end

  # keyとvalueをハッシュでまとめて設定する
  #[hash]
  # ハッシュで渡されたkeyとvalue
  def set(hash)
    hash.each {|k, v|
      set(k, v)
    }
  end


end