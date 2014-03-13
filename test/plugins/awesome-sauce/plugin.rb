require 'octopress-ink'

class TestPlugin < Octopress::Ink::Plugin
  def configuration
    {
      name:        'Awesome Sauce',
      slug:        'awesome-sauce',
      assets_path: File.expand_path(File.dirname(__FILE__)),
      description: "Test some plugins y'all"
    }
  end

  def add_assets
    add_css 'plugin-test.css'
    add_css 'plugin-media-test.css', 'print'
    super
  end
end

Octopress::Ink.register_plugin(TestPlugin)

