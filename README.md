#Vim Settings
Initially took from rob conery's repository, I will add a link to his repo later 


##Setup
Very simple just git clone my repo into your .vim folder if you don't have one well create one if you have one then you probably want to make a backup of it

Run rake once you're in .vim, there are some plugins in config/options.yml, you can remove everyone except fugitive, as the vimrc file uses it for the status line.

Be careful with the update task of the rakefile I don't think it works properly. 

##Dependencies
There is a dependency on pathogen that makes all plugins be inside of bundle making it easy to manage plugins in vim. 
