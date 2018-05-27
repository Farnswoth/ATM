require 'yaml'

module ConfigReader
  def self.read
    YAML.load_file(ARGV.first || 'config.yml')
  end
end
