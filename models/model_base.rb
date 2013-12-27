#-*- encoding: utf-8

class ModelBase
  @hash = Hash.new

  # [keys]
  #   モデルで利用できるシンボルの配列
  def initialize(keys)
    keys.each {|x| @hash[x] = nil }   # とりあえずハッシュを初期化
  end

  # [keys]
  #   モデルで利用できるシンボルの配列
  # [attributes]
  #   itemに渡したい値
  def initialize(keys, attributes)
    keys.each {|x| @hash[x] = nil }
    set(attributes)
  end

  # keyとvalueを指定してItemに設定する
  # [key]
  #   Itemのキー
  # [value]
  #   キーに対応するItemの値
  def set(key, value)
    if @hash.has_key?(key) then
      @hash[key] = value
    else
      nil
    end
  end

  # keyとvalueをハッシュでまとめて設定する
  # [hash]
  #   ハッシュで渡されたkeyとvalue
  def set(hash)
    hash.each {|k, v|
      set(k, v)
    }
  end


end