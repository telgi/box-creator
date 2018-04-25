class Box
  def launch!
    introduction
    get_user_input
  end

  def create(w, h)
    validation(w, h)
    build(w, h)
  end

  def build(w, h)
    create_top(w)
    create_middle(w, h)
    create_bottom(w)
  end

  def create_top(w)
    puts "\u250C  #{('  ' + 45.chr + '  ') * (w - 2)}  \u2510"
  end

  def create_middle(w, h)
    (h - 2).times { puts "\n\u2502  #{'     ' * (w - 2)}  \u2502" }
    puts ""
  end

  def create_bottom(w)
    puts "\u2514  #{('  ' + 45.chr + '  ') * (w - 2)}  \u2518"
  end

  def validation(w, h)
    raise "You must select dimensions with whole numbers" if !(integers?(w, h))
    raise "You must select dimensions that are greater than or equal to 2x2" if box_too_small?(w, h)
  end

  private

  def box_too_small?(w, h)
    w <= 2 && h <= 2
  end

  def integers?(w, h)
    (w.is_a? Integer) && (h.is_a? Integer)
  end

  def get_user_input
    puts "\nPlease select the width of your box:"
    w = gets.chomp.to_i
    puts "\nPlease select the height of your box:\n"
    h = gets.chomp.to_i
    output_box(w, h)
  end

  def output_box(w, h)
    puts "Here's your beautiful box: #{w} width by #{h} height"
    create(w, h)
    repeat_user_input
  end

  def repeat_user_input
    puts "do you want another box? y / n"
    repeat(STDIN.gets.chomp.strip.downcase.to_sym)
  end

  def repeat(selection)
    case selection
    when :y then get_user_input
    when :n then conclusion
    else puts "Please type 'y' or 'n'"
    end
  end

  def introduction
    puts "Welcome to the Box Creator!"
  end

  def conclusion
    puts "\nBye - see you next time you need a box.."
    exit
  end
end
