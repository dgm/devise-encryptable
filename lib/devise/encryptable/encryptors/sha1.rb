require "digest/sha1"

module Devise
  module Encryptable
    module Encryptors
      # = Sha1
      # Uses the Sha1 hash algorithm to encrypt passwords.
      class Sha1 < Base
        # Generates a default password digest based on stretches, salt, pepper and the
        # incoming password.
        def self.digest(password, stretches, salt, pepper)
          ::Digest::SHA1.hexdigest(password + '--' + salt)
        end
      end
    end
  end
end