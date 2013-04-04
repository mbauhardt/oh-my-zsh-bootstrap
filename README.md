# Oh My Zsh Bootstrap

_Oh My Zsh Bootstrap_ is a plugin for [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
With that plugin you can

* list plugins
* enable/disable plugins
* download plugins
* list themes
* enable/disable theme
* download themes

## Installation
### Automatic Way

    curl -L https://github.com/mbauhardt/oh-my-zsh-bootstrap/raw/master/tools/install.zsh | zsh
    
### Manual Way

## Usage
### List Plugins

    list_plugins
    
With the command above you can list all plugins which exists under $ZSH/plugins or $ZSH_CUSTOM/plugins

    list_enabled_plugins
    
### Enable Plugins
    
    enable_plugin <plugin>
    
    download_plugin <url> <name>


## Feedback / Contact

Please use [Github's Issue Tracker](https://github.com/mbauhardt/oh-my-zsh-bootstrap/issues) or ping me on twitter [@mbauhardt](https://twitter.com/mbauhardt)



## License

[MIT](http://opensource.org/licenses/MIT)
