class ColorCode                                                                                                                                                                                                          
    attr_reader :code
                                                                                                                                                                                                                      
    def initialize
      @code = Array.new(4) { rand(1..6) }
    end
  end     