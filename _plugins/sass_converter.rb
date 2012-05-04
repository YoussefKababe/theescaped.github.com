# This plug-in will be ignored by Jekyll, since we use Github Pages. The css is Sassed locally, then pushed here. 

module Jekyll
  require 'sass'
  class SassConverter < Converter
    safe true
    priority :low

     def matches(ext)
      ext =~ /scss/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      begin
        puts "Performing Sass Conversion."
        engine = Sass::Engine.new(content, :syntax => :scss)
        engine.render
      rescue StandardError => e
        puts "Sass Problem: =>" + e.message
      end
    end
  end
end