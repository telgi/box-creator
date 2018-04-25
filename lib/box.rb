class Box
  def create_box
    create_top
    create_bottom
  end

  def create_top
    puts "\u250C \u2510"
  end

  def create_bottom
    print "\u2514 \u2518"
  end
end
