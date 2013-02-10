require 'compass'
Compass::Frameworks.register('respondsass',
                             :stylesheets_directory => File.join(File.dirname(__FILE__), '..', 'stylesheets'),
                             :templates_directory => File.join(File.dirname(__FILE__), '..', 'templates'))