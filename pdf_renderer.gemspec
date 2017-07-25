$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pdf_renderer"
  s.version     = PdfRenderer::VERSION
  s.authors     = ["Cristiano Alencar"]
  s.email       = ["cristiano.souza.mendonca@gmail.com"]
  s.homepage    = "http://cristiano.mendonca.com"
  s.summary     = "PdfRenderer is an application made through Crafting Rails 4 Applications - a book from Jose Valim."
  s.description = "PdfRenderer is an application made through Crafting Rails 4 Applications - a book from Jose Valim."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"

  s.add_development_dependency "sqlite3"
end
