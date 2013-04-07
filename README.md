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

![List Plugins](https://dl.dropbox.com/s/wymgd4x2yfvciwv/list_plugins.png?token_hash=AAGGdSyk04b6ZAstcku51-qn98UMmtQYDhJbAPBTxRkzag&dl=1)

    list_enabled_plugins
    
![List Enabled Plugins](https://dl.dropbox.com/s/zxr9cgunx2jq0yj/list_enabled_plugins.png?token_hash=AAGOZYSNK4cEIabeFoT-jBK9k9Yisu1M2NHLG961-LMrtg&dl=1)    
    
### Enable Plugins
    
You can enable a plugin with the command <code>enable_plugin <plugin></code>. The two screenshots below shows how you can aneble the plugin ant.

List plugins shows that ant is disabled.
![Enable Ant Before](https://dl.dropbox.com/s/tzq9xn28jys3zph/enable_ant_before.png?token_hash=AAGqOMxDHjuZxXLdNdINH-5rDo6S2WdgIyLiqfX7ZvBPVA&dl=1)

After enable ant, list plugins show the new status and the plugin is included. 
![Enable Ant After](https://dl.dropbox.com/s/6rtpk0fesbjl3pd/enable_ant_after.png?token_hash=AAFYmAfAL3tnLmG7LjFNfaIN7seM9ayptwB-aaj-3v01aw&dl=1)
    
    download_plugin <url> <name>


## Feedback / Contact

Please use [Github's Issue Tracker](https://github.com/mbauhardt/oh-my-zsh-bootstrap/issues) or ping me on twitter [@mbauhardt](https://twitter.com/mbauhardt)



## License

[MIT](http://opensource.org/licenses/MIT)
