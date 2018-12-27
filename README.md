# vim 相关的配置文件

当前只支持最新版本的 neovim，部分发行版本的包管理器中，neovim 版本过老，请手动安装最新版本 (**ArchLinux 欢迎你**) 。

## 一、配置

根据注释修正`~/.config/nvim/init.vim`中的第一部分`全局配置`，一般只需要配置以下环境变量即可：

| 环境变量                         | 说明                                                   | 默认值             |
|----------------------------------|--------------------------------------------------------|--------------------|
| `SPACEZ_CONFIG_VIM_PYTHON2_PATH` | python2 路径，用来设置 vim 中的`python_host_prog`变量  | `/usr/bin/python2` |
| `SPACEZ_CONFIG_VIM_PYTHON3_PATH` | python3 路径，用来设置 vim 中的`python3_host_prog`变量 | `/usr/bin/python3` |

要保证这两个 Python 环境中都有`neovim`这个包，安装方式：

+ archlinux：`sudo pacman -S python-neovim python2-neovim`
+ 虚拟环境或其他环境：`pip install neovim`

**建议**：将所用到的环境变量写到`~/.bashrc`或`~/.zshrc`中。

## 二、安装

```bash
$ ./install.sh
```

如果有使用代理，可以这样快速安装插件：

```bash
# 先删除之前的插件
$ rm -rf plugins/*
# 使用代理，进入 neovim
$ http_proxy=http://<proxy_host>:<proxy_port> https_proxy=http://<proxy_host>:<proxy_port> ./install.sh
```

## 三、其它

下列情况下，需要重新在 neovim 中执行`:UpdateRemotePlugins`命令：

+ 修改本项目路径
+ 修改`python_host_prog`或`python3_host_prog`路径
+ 安装或重新安装`denite`和`deoplete`插件
