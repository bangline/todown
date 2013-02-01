class Todown::List

  def self.add(message, priority, context)
    line = "* [#{priority}] #{message}"
    line << " `#{context}`" unless context.empty?
    Todown::File.add_line(line)
  end

  def self.show
    todo_list = Todown::File.content
    todo_list.sort_by! { |s| s[/[\d+]/].to_i }
    todo_list.each do |item|
      if item[/[1]/]
        puts item.strip.red
      elsif item[/[2]/]
        puts item.strip.yellow
      elsif item[/[3]/]
        puts item.strip.blue
      else
        puts item.strip
      end
    end
  end

end