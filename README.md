### 安装

    wget https://raw.github.com/thbourlove/vim/master/install -O - | sh

### ctags 安装

    wget https://raw.github.com/thbourlove/vim/master/install_ctags -O - | sh

### ctags 使用姿势

    ctags -R --fields=+aimS --languages=php --php-kinds=cidf --exclude=tests .

### 快捷键

* 普通模式

    * `;` 进入命令模式
    * `,v` 打开`~/.vimrc`
    * `,s` 重新读取`~/.vimrc`配置
    * `,pp` 进入粘贴模式
    * `,g` 搜索当前目录及其子目录
    * `<Right>` 下一个buffer
    * `<Left>` 上一个buffer
    * `,/` 清除当前高亮
    * `,m` 清除win的回车
    * `Ctrl` + `j` 向下切换窗口
    * `Ctrl` + `k` 向上切换窗口
    * `Ctrl` + `l` 向右切换窗口
    * `Ctrl` + `h` 向左切换窗口
    * `H` 向左切换标签页
    * `L` 向右切换标签页
    * `Y` 复制到行尾


* 视图模式

    * `;` 进入命令模式
    * `*` 向下搜索当前选中的字符串
    * `#` 向上搜索当前选中的字符串
    * `gv` 当前目录及其子目录下搜索选中的字符串


* 命令模式

    * `cd.` 回到当前文件所在目录
    * `w!!` 在不具有写入权限的情况下保存当前文件


* 插入模式

    * `jk` 进入普通模式
