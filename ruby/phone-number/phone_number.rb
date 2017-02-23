class PhoneNumber
  def initialize(string)
    @number_match = filter_phone_number(string)
  end

  def number
    return '0000000000' unless @number_match
    @number_match[1..3].join
  end

  def area_code
    @number_match[1]
  end

  def prefix
    @number_match[2]
  end

  def suffix
    @number_match[3]
  end

  def to_s
    "(#{area_code}) #{prefix}-#{suffix}"
  end

  private

  def filter_phone_number(str)
    str.match(/^\D*(?:1)?(\d{3})\D*(\d{3})\D*(\d{4})$/)
  end
end
