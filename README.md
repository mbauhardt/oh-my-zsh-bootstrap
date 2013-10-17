# Oh My Zsh Bootstrap

_Oh My Zsh Bootstrap_ is a plugin for [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
With that plugin you can

* <code>list_plugins</code>
* <code>enable_plugin</code>
* <code>disable_plugin</code>
* <code>download_and_enable_plugin</code>
* <code>list_themes</code>
* <code>enable_theme</code>
* <code>download_and_enable_theme</code>
* <code>update_plugin</code>
* <code>update_theme</code>

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
    
With <code>list_plugins</code> you can list all plugins which exists under $ZSH/plugins or $ZSH_CUSTOM/plugins

![List Plugins](https://dl.dropbox.com/s/wymgd4x2yfvciwv/list_plugins.png?token_hash=AAGGdSyk04b6ZAstcku51-qn98UMmtQYDhJbAPBTxRkzag&dl=1)

<code>list_enabled_plugins</code> list only the enabled plugins
    
![List Enabled Plugins](https://dl.dropbox.com/s/zxr9cgunx2jq0yj/list_enabled_plugins.png?token_hash=AAGOZYSNK4cEIabeFoT-jBK9k9Yisu1M2NHLG961-LMrtg&dl=1)    
    


### Enable Plugins
    
You can enable a plugin with  <code>enable_plugin [plugin]</code>. The two screenshots below shows how you can enable the plugin _ant_.

List plugins shows that _ant_ is disabled.

![Enable Ant Before](https://dl.dropbox.com/s/tzq9xn28jys3zph/enable_ant_before.png?token_hash=AAGqOMxDHjuZxXLdNdINH-5rDo6S2WdgIyLiqfX7ZvBPVA&dl=1)

After enable <code>enable_plugin ant</code>, list plugins show the new status and the plugin is included. 

![Enable Ant After](https://dl.dropbox.com/s/6rtpk0fesbjl3pd/enable_ant_after.png?token_hash=AAFYmAfAL3tnLmG7LjFNfaIN7seM9ayptwB-aaj-3v01aw&dl=1)
    


### Download Plugins

You can use <code>download_and_enable_plugin [git.url] [name]</code> to download a plugin from a specific git url.
The screenshot below show how to download the [Zsh Highlighting PLugin](https://github.com/zsh-users/zsh-syntax-highlighting)

![Download Plugin](https://dl.dropbox.com/s/m7gw9bvk7dqym4i/download_plugin_before.png?token_hash=AAETJUSWQX0bIb7j8DNqyN8vAaQp4adMgO0AdkuaP-E9Fg&dl=1)

![Download Plugin After](https://dl.dropbox.com/s/2zbo02szb1y9hp7/download_plugin_after.png?token_hash=AAFEqdLYMMEo7kqqn8mWs1JBkslJcHyS846N_kC0juPfpA&dl=1)


### List Themes

<code>list_themes</code> list all available themes.

![List Themes](https://dl.dropboxusercontent.com/s/kdiw20h91relc4n/list_themes.png?token_hash=AAHfRmKp4el2PP4ZIPop6KaPz9jdba65qjm1obIEW1l8Tw&dl=1)



### Enable Theme

To enable a theme you can use the command <code>enable_theme [theme]</code>

![Enable Theme](https://dl.dropboxusercontent.com/s/wy5bzmq7jirufdd/enable_theme.png?token_hash=AAGTOTYm7zgFnPJW3RgG_cEjr61FvMOLgOIvhxprKhRd7g&dl=1)

## Feedback / Contact

Please use [Github's Issue Tracker](https://github.com/mbauhardt/oh-my-zsh-bootstrap/issues) or ping me on twitter [@mbauhardt](https://twitter.com/mbauhardt)



## License

[MIT](http://opensource.org/licenses/MIT)
