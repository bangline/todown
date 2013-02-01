class Todown::Config

  def self.config_file
    '.todown'
  end

  def self.generate
    if File.exists? self.config_file
      puts 'Todown configuration already in place'.red
      exit 1
    end

    File.open( self.config_file, 'w' ) { |f| f.write Hash.new.to_yaml }
    puts 'Todown configuration created'.green
  end

  def self.add(key, value)
    config = YAML.load_file(self.config_file)
    config.merge!({ key => value })
    File.open( self.config_file, 'w' ) { |f| f.write config.to_yaml}
  end

  def self.read(key)
    config = YAML.load_file(self.config_file)
    config[key]
  end

end