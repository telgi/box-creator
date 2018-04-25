class Box
  def create_box(w)
    create_top(w)
    create_middle(w)
    create_bottom(w)
  end

  def create_top(w)
    puts "\u250C #{45.chr * (w - 2)} \u2510"
  end

  def create_middle(w)
    puts "\u2502 #{" " * (w - 2)} \u2502"
  end

  def create_bottom(w)
    print "\u2514 #{45.chr * (w - 2)} \u2518"
  end
end
