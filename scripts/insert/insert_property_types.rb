require 'csv'

class BatchCompanies
  def initialize
    @csv_path = ARGV.first
    @data_review = nil
  end

  def insert_data
    return if @csv_path == ''

    CSV.foreach(@csv_path, headers: true) do |row|
      @data = row.to_hash
      insert
    end
  end

  def insert
    a_property_type = PropertyType.new(property_type_name: @data['typename'])
    a_property_type.save
  end
end

batch = BatchCompanies.new
batch.insert_data
