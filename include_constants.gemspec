lib = File.expand_path './lib/'
$:.unshift lib unless $:.include? lib

Gem::Specification.new do |g|
  g.name    = 'include_constants'
  g.version = '0.0.0'
  g.summary = 'A way to include constants from a module, without including its methods.'
  g.authors = ['Anatoly Chernow']

  g.add_development_dependency 'minitest-power_assert'
end
