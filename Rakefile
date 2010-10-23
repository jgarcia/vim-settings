require 'rubygems'
require 'rake'
require 'yaml'

desc 'Default installs all plugins in the config yml file'
task :default => :setup


desc 'Installs all plugins found in config/options.yml'
task :setup do
  options = YAML.load_file('config/options.yml')
  plugins = options["plugins"]
  plugins do |plugin|
    fetch(plugin) unless installed_plugins.include? plugin["name"]
  end
end

desc 'Updates plugins to latest version'
task :update do
  plugins = options["plugins"]
  installed_plugins do |plugin|
    update(plugin)
  end
end

#Retrieves the plugin from scm 
def fetch(plugin)
  cmd = case plugin["fetch_type"]
        when "git"
          "git clone"
        when "svn"
          "svn co"
        end
  system("#{cmd} #{plugin["source"]} ~/.vim/bundle/#{plugin["name"]}")
end

def update(plugin)
  cmd = case plugin["fetch_type"]
        when "git"
          "git pull"
        when "svn"
          "svn up"
        end
  system("cd ~/.vim/bundle/#{plugin["name"]}")
  system("#{cmd}")
end

def installed_plugins
  @installed_plugins ||= `ls ~/.vim/bundle`.split("\n")
end

