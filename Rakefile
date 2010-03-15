require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "viewfu"
    s.summary = "rails3 view helpers"
    s.email = "railsjedi@gmail.com"
    s.homepage = "http://github.com/railsjedi/viewfu"
    s.description = "Lots of little tidbits for tidying up your views"
    s.authors = ["Jacques Crocker"]
    s.files =  FileList["[A-Z]*", "{bin,generators,lib,test}/**/*"]
  end
  Jeweler::GemcutterTasks.new
  
rescue LoadError
  # puts "Jeweler, or one of its dependencies, is not available. Install it with: gem install jeweler"
end