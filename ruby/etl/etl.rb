class ETL
  def self.transform(old)
    new = {}
    old.each do |k, v|
      new.merge!(v.each_with_object({}) {|e, result| result[e.downcase] = k})
    end
    new
  end
end
