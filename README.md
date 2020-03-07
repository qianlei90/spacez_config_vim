# vim 相关的配置文件

当前只支持最新版本的 neovim，部分发行版本的包管理器中，neovim 版本过老，请手动安装最新版本 (**ArchLinux 欢迎你**) 。

## 一、配置

根据注释修正`~/.config/nvim/init.vim`中的第一部分`全局配置`，一般只需要配置以下环境变量即可：

| 环境变量                             | 说明                                                   | 默认值                            |
|--------------------------------------|--------------------------------------------------------|-----------------------------------|
| `SPACEZ_CONFIG_VIM_ROOT_DIR`         | spacez_config_vim 所在的目录                           | `init.vim`所在目录的父目录        |
| `SPACEZ_CONFIG_VIM_PYTHON2_PATH`     | python2 路径，用来设置 vim 中的`python_host_prog`变量  | `/usr/bin/python2`                |
| `SPACEZ_CONFIG_VIM_PYTHON3_PATH`     | python3 路径，用来设置 vim 中的`python3_host_prog`变量 | `/usr/bin/python3`                |
| `SPACEZ_CONFIG_VIM_ENABLE_PLUGINS`   | 是否启用第三方插件                                     | `1`                               |
| `SPACEZ_CONFIG_VIM_ENABLE_GUICOLORS` | 配色是否启用 termguicolors                             | `0`                               |
| `SPACEZ_CONFIG_VIM_GITHUB_MIRROR`    | 是否使用 github 的镜像地址                             | `https://git::@github.com/%s.git` |


要保证 Python 环境中有`pynvim`这个包，安装方式：

```bash
$ pip install --user pynvim
```

**建议**：将所用到的环境变量写到`~/.bashrc`或`~/.zshrc`中。

## 二、安装

```bash
$ ./install.sh
```

所有插件都在_plugins_这个目录下，可以随意删除、重装。

## 三、其它

部分插件需要`:UpdateRemotePlugins`命令后才能使用
