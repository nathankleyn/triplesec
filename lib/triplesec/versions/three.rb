module TripleSec
  class VersionThree < Version
    VERSION = 3
    SALT_SIZE = 16

    KDF = {
      name: 'scrypt',
      implementation: # FIXME,
      parameters: [
        # FIXME
      ]
    }

    MACS = [
      {
        name: 'HMAC-SHA-512',
        implementation: # FIXME,
        key_size: 48,
        output_size: 64
      },
      {
        name: 'SHA3',
        implementation: # FIXME,
        key_size: 48,
        output_size: 64
      }
    ]

    CIPHERS = [
      {
        name: 'XSalsa20',
        implementation: # FIXME,
        overhead_size: # FIXME,
        key_size: # FIXME
      },
      {
        name: 'Twofish-CTR',
        implementation: # FIXME,
        overhead_size: # FIXME,
        key_size: # FIXME
      },
      {
        name: 'AES-256-CTR',
        implementation: # FIXME,
        overhead_size: # FIXME,
        key_size: # FIXME
      },
    ]
  end
end
