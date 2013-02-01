class Todown::File

  def self.create(filename)
    File.open(filename, 'w') { |f| f.puts '# Todo:' }
  end

  def self.add_line(line)
    list_file = Todown::Config.read(:file)
    File.open(list_file, 'a') { |f| f.puts line }
  end

  def self.content
    list_file = Todown::Config.read(:file)
    File.readlines list_file
  end
end