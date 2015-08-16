Gem::Specification.new do |g|
  g.name    = 'include_constants'
  g.files   = `git ls-files`.split($/)
  g.version = '0.0.0'
  g.summary = 'A way to include constants from a module, without including its methods.'
  g.authors = ['Anatoly Chernow']

  g.add_development_dependency 'minitest-power_assert'
end
