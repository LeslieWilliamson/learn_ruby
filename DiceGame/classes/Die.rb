class Die

    attr_reader :value

    def initialize(options={})
        @sides = options[:sides] || 6
        roll
    end

    def roll
        @value = get_random_number
    end

    def display
        print "[#{@value}] "
    end

private
    def get_random_number
        rand(@sides)+1
    end
end
