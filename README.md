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

1. Install [ohmyzsh](https://github.com/robbyrussell/oh-my-zsh/)
2. Clone Oh My zsh Bootstrap into the custom plugin folder
    <pre>git clone git://github.com/mbauhardt/oh-my-zsh-bootstrap.git $HOME/.oh-my-zsh/custom/plugins/oh-my-zsh-bootstrap</pre>
3. edit the ~/.zshrc file and add the plugin to the _plugin_ variable
    <pre>plugins=(oh-my-zsh-bootstrap git)</pre>

## Usage
### List Plugins

    list_plugins
    
With the command above you can list all plugins which exists under $ZSH/plugins or $ZSH_CUSTOM/plugins

![List Plugins](https://www.dropbox.com/l/cVBuJpx8iRVK5T0wWsNNzd)

    list_enabled_plugins
    
### Enable Plugins
    
    enable_plugin <plugin>
    
    download_plugin <url> <name>


## Feedback / Contact

Please use [Github's Issue Tracker](https://github.com/mbauhardt/oh-my-zsh-bootstrap/issues) or ping me on twitter [@mbauhardt](https://twitter.com/mbauhardt)



## License

[MIT](http://opensource.org/licenses/MIT)
