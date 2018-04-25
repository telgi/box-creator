class Box
  def create(w, h)
    validation(w, h)
    create_top(w)
    create_middle(w, h)
    create_bottom(w)
  end

  def create_top(w)
    puts "\u250C  #{('  ' + 45.chr + '  ') * (w - 2)}  \u2510"
  end

  def create_middle(w, h)
    (h - 2).times do
      puts ""
      puts "\u2502  #{'     ' * (w - 2)}  \u2502"
    end
    puts ""
  end

  def create_bottom(w)
    print "\u2514  #{('  ' + 45.chr + '  ') * (w - 2)}  \u2518"
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
end
