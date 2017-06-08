Dotfiles
========

这个项目就是保存我的osx常用配置的,这样在新机器或者新的系统环境下能够快速的构建原有的习惯的开发环境.

主要包含以下内容

* 安装初始化脚本
* brew安装一些必要软件和工具
* 配置git
* vim配置和主题等
* tmux配置和主题等

Todo
-----------

* [ ] zsh在安装完了以后会重置环境,后面的脚本将不会执行了
* [ ] 添加python虚拟环境
* [ ] 增加更新, brew , iterm, vim, tmux

Installation
------------

先确保安装xcode和相应的工具

```bash
xcode-select --install
```

然后拉取代码,并执行初始化脚本

``` bash
git clone git://github.com/rainytooo/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install.sh
```


Change Log
----------

* 2017-06-08
    - 更新了tmux的插件,和插件的安装方式
    - 调整了tmux和zsh的顺序
    - 打印输出添加一些分隔符
