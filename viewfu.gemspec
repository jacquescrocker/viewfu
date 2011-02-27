Gem::Specification.new do |s|
  s.name = "viewfu"
  s.version = "1.0.3"

  s.summary = "rails3 view helpers"
  s.email = "railsjedi@gmail.com"
  s.homepage = "http://github.com/railsjedi/viewfu"
  s.description = "Lots of little tidbits for tidying up your views"
  s.authors = ["Jacques Crocker"]

  s.require_paths = ["lib"]

  s.files = Dir['lib/**/*',
                'viewfu.gemspec',
                'Gemfile',
                'Gemfile.lock',
                'LICENSE',
                'Rakefile',
                'README']

  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
end

