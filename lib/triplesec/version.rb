# FIXME: This needs to be a mixin instead.
module TripleSec
  class Version
    def self.get(version)
      # FIXME: Make this return the right class.
      TripleSec::Version.const_get().new
    end

    def encrypt
      salt = SecureRandom.random_bytes(SALT_SIZE)
    end

    def decrypt

    end

    private
    def encrypt_data(data, cipher_keys)
      CIPHERS.inject(data) do |cipher_input, (cipher, i)|
        cipher.encrypt(cipher_input, cipher_keys[i])
      end
    end
  end
end
