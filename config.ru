# config.ru
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

require './index'

require 'slim'
Slim::Engine.set_options shortcut: {'c' => {tag: 'container'}, '#' => {attr: 'id'}, '.' => {attr: 'class'} }


run Sinatra::Application