module Colors                                                                                                                                                                                                       
    RESET = "\e[0m"

    COLORS = {
      1 => "\e[31m●#{RESET}",  # Red
      2 => "\e[32m●#{RESET}",  # Green                                                                                                                                                                                
      3 => "\e[33m●#{RESET}",  # Yellow
      4 => "\e[34m●#{RESET}",  # Blue                                                                                                                                                                                 
      5 => "\e[35m●#{RESET}",  # Magenta
      6 => "\e[36m●#{RESET}"   # Cyan                                                                                                                                                                                 
    }                                                                                                                                                                                                                 
   
    LABELS = {                                                                                                                                                                                                        
      1 => "Red", 
      2 => "Green",
      3 => "Yellow",
      4 => "Blue",                                                                                                                                                                                                    
      5 => "Magenta",
      6 => "Cyan"                                                                                                                                                                                                     
    }             

    def self.render(code_array)                                                                                                                                                                                       
      code_array.map { |n| COLORS[n] }.join(' ')
    end                                                                                                                                                                                                               
  end   