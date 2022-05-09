class Radio
    attr_reader :band, :volume, :frequency
 
    # @volume = (1..10)
    @@am_range = (540.0..1600.0)
    @@fm_range = (88.0..108.0)
    
    def initialize(options = {})
        @band = options[:band] || "FM"
        self.volume = options[:volume] || 5
        self.frequency = get_default_frequency
    end

    def volume= (vol)
        return unless (1..10).include? vol
        @volume = vol
    end

    def frequency= (freq)
    case band
        when "AM"
            # return unless (540.0..1600.0).include? freq
            return unless @@am_range.include? freq
        when "FM"
            # return unless (88.0..108.0).include? freq
            return unless @@fm_range.include? freq
     end
    @frequency = freq
    end

    def self.AM
        Radio.new({band: "AM"})
    end

    def self.FM
        Radio.new({band: "FM"})
    end

    def status
        sprintf("%s %8.1f volume: %02d", band, frequency, volume)
    end

private
    def get_default_frequency
        return 800.0 if self.band == "AM"
        97.7
    end
end