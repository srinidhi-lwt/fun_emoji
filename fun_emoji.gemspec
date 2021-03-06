
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fun_emoji/version"

Gem::Specification.new do |spec|
  spec.name          = "fun_emoji"
  spec.version       = FunEmoji::VERSION
  spec.authors       = ["Srinidhi G S"]
  spec.email         = ["srini.satti@gmail.com"]

  spec.summary       = %q{Emoji from it's name. No more unreadable unicode}
  spec.description   = %q{We can use methods to get the Emoji instead of using unreadable unicode starting with &#}
  spec.homepage      = "https://github.com/srinidhi-lwt/fun_emoji"
  spec.license       = "MIT"

  spec.files         = ["README.md", "lib/fun_emoji.rb", "lib/fun_emoji/version.rb", "config/emoji_list.json"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
