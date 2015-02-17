class GibberishCipher

  def initialize(password, salt)
      @cipher = Gibberish::AES.new(password)
      @salt = salt
  end

  def encrypt(data)
      @cipher.encrypt(data, salt: @salt)
  end

  def decrypt(data)
      @cipher.decrypt(data)
  end

end

Mongoid::EncryptedFields.cipher = GibberishCipher.new(ENV['MY_PASSWORD'], ENV['MY_SALT'])