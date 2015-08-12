class DataLoader
  DEFAULT_DATA = %w(Country AreaType Category ExternalResource ServiceType AppService)
  DEFAULT_DATA_RELATIONSHIP = %w(Department City SpecificLocation TouristSite Service ServiceTypeService TouristSiteCategory TouristSiteExternalResource TouristSiteAppService)

  # Load data the table have not relations
  def self.load_default_data
    file = './db/data_files/default-data.ods'
    data_file = Roo::Spreadsheet.open(file)
    DEFAULT_DATA.each do |data_class|
      fields = data_file.sheet(data_class).row(1).map(&:to_sym)
      id_position = fields.find_index(:id)
      fields.delete_at(id_position) if id_position
      data_file.sheet(data_class).each_with_index do |row, index|
        row = row.map do |x|
          case x
          when 'TRUE'
            true
          when 'FALSE'
            false
          else
            x
          end
        end
        row.delete_at(id_position) if id_position
        data_class.constantize.create! Hash[fields.zip(row)] unless index == 0
      end
    end
    data_file.close
  end

  # Load data the table have relations
  def self.load_default_data_relationship
    file = './db/data_files/default-data-relationship.ods'
    data_file = Roo::Spreadsheet.open(file)
    DEFAULT_DATA_RELATIONSHIP.each do |data_class|
      fields = data_file.sheet(data_class).row(1).map(&:to_sym)
      id_position = fields.find_index(:id)
      fields.delete_at(id_position) if id_position
      data_file.sheet(data_class).each_with_index do |row, index|
        row = row.map do |x|
          case x
          when 'TRUE'
            true
          when 'FALSE'
            false
          else
            x
          end
        end
        row.delete_at(id_position) if id_position
        data_class.constantize.create! Hash[fields.zip(row)] unless index == 0
      end
    end
    data_file.close
  end

  # Load default data
  def self.load_test_data
    load_default_data
    load_default_data_relationship
  end

end
