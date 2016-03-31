require 'colorize'

def get_color (red, green, blue)

  rainbow = [
    { red: 
      { r: 255, g: 0, b: 0 } 
    },

    { orange: 
      { r: 255, g: 127, b: 0 } 
    },

    { yellow: 
      { r: 255, g: 255, b: 0 }
    },

    { green: 
      { r: 0, g: 255, b: 0 }
    },

    { blue: 
      { r: 0, g: 0, b: 255 }
    },

    { indigo: 
      { r: 75, g: 0, b: 130 }
    },
    
    { violet:
     { r: 143, g: 0, b: 255 }
    },
  ]

  rainbow.each do |color|
    color.each do |key, value|
      if red == value[:r] && green == value[:g] && blue == value[:b]
        return key.to_s
      else
        puts "Sorry, I do not know that color!"
      end
    end
  end
end

puts get_color(255, 0, 0).colorize(:red)
puts get_color(255, 127, 0).colorize(:orange)
puts get_color(255, 255, 0).colorize(:yellow)
puts get_color(0, 255, 0).colorize(:green)
puts get_color(0, 0, 255).colorize(:blue)
puts get_color(75, 0, 130).colorize(:indigo)
puts get_color(143, 0, 255).colorize(:violet)