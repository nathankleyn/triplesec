class TripleSec
  attr_reader :key

  def initialize(key)
    @key = key

    validate_key
  end

  def encrypt(data, version = nil)
    validate_data(data)
    TripleSec::Version.get(version).encrypt(data)
  end

  def decrypt(data)

  end

  private
  def validate_key
    raise 'Key cannot be empty' if @key.nil? || @key.blank?
  end

  def validate_data(data)
    raise 'Data cannot be empty' if data.nil? || data.empty?
  end

  def stretch_keys

  end
end
