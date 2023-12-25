# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

require 'guard/jekyll_plus/config'
jekyll_plus_options = {}
guard 'jekyll-plus', jekyll_plus_options do
  watch(Guard::JekyllPlus::Config.new(jekyll_plus_options).watch_regexp)
end

guard 'jekyll-plus', config_file: '_config.yml' do
  watch %r{^_config.yml}
  watch %r{^((?!_site).)*\.(html|markdown|md|json|xml|yml|css|scss|js|coffee|png|jpg|jpeg|gif|svg|ico)}
end
