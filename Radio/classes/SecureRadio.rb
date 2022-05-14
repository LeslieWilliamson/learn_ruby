require_relative "Radio"

class SecureRadio < Radio

    def play
        print "Secure Radio - "
        super
        puts "\tDecrypted stream: #{decrypt @sample}"
    end

private 
    def encypt stream
        chars = stream.split ""
        output = chars.map {|c| (c.ord + 3).chr }
        # "#{output.join} - \"#{stream}\" "
        output.join
    end    

    def decrypt stream
        chars = stream.split ""
        output = chars.map {|c| (c.ord - 3).chr }
        output.join
    end

    def audio_sample
        @sample = encypt super
    end
end