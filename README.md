### 安装

    wget https://raw.github.com/thbourlove/vim/master/install -O - | sh

### ctags 安装

    wget https://raw.github.com/thbourlove/vim/master/install_ctags -O - | sh

### ctags 使用姿势

    ctags -R --fields=+aimS --languages=php --php-kinds=cidf --exclude=tests .

### 快捷键

快捷键                         | 模式          | 描述
------------                   | ------------- | ----------------------------------
`;`                            | normal/visual | 进入命令模式
`,v`                           | normal        | 打开`~/.vimrc`
`,s`                           | normal        | 重新读取`~/.vimrc`配置
`,pp`                          | normal        | 进入粘贴模式
`,g`                           | normal        | 搜索当前目录及其子目录
`<Right>`                      | normal        | 下一个buffer
`<Left>`                       | normal        | 上一个buffer
`,/`                           | normal        | 清除当前高亮
`,m`                           | normal        | 清除win的回车
`Ctrl` + `j`                   | normal        | 向下切换窗口
`Ctrl` + `k`                   | normal        | 向上切换窗口
`Ctrl` + `l`                   | normal        | 向右切换窗口
`Ctrl` + `h`                   | normal        | 向左切换窗口
`H`                            | normal        | 向左切换标签页
`L`                            | normal        | 向右切换标签页
`Y`                            | normal        | 复制到行尾
`*`                            | visual        | 向下搜索当前选中的字符串
`#`                            | visual        | 向上搜索当前选中的字符串
`gv`                           | visual        | 当前目录及其子目录下搜索选中的字符串
`cd.`                          | command       | 回到当前文件所在目录
`w!!`                          | command       | 在不具有写入权限的情况下保存当前文件
`jk`                           | insert        | 进入普通模式
`Ctrl` + `<Space>`             | normal        | Cscope搜索前置键
`Ctrl` + `<Space>` + `<Space>` | normal        | Cscope竖向切割窗口打开

### 插件列表


插件名                                                                                                 | 描述                                 | 快捷键
------------                                                                                           | ----------------------------------   | -----------
[gmarik/vundle](http://www.github.com/gmarik/vundle)                                                   | 插件管理                             |
[Lokaltog/vim-powerline](http://www.github.com/Lokaltog/vim-powerline)                                 | 状态栏增强                           |
[altercation/vim-colors-solarized](http://www.github.com/altercation/vim-colors-solarized)             | solarized主题                        |
[kien/ctrlp.vim](http://www.github.com/kien/ctrlp.vim)                                                 | 文件搜索                             | `,p`
[scrooloose/nerdtree](http://www.github.com/scrooloose/nerdtree)                                       | 目录管理                             | `,n` `,o`
[Lokaltog/vim-easymotion](http://www.github.com/Lokaltog/vim-easymotion)                               | 光标移动增强                         | `,,f` `,,w`
[terryma/vim-expand-region](http://www.github.com/terryma/vim-expand-region)                           | Visuald代码域选择增强                | `<Up>` `<Down>`
[SirVer/ultisnips](http://www.github.com/SirVer/ultisnips)                                             | 代码段补全                           | `<Tab>`
[Townk/vim-autoclose](http://www.github.com/Townk/vim-autoclose)                                       | 括号补全增强                         | `,a`
[scrooloose/nerdcommenter](http://www.github.com/scrooloose/nerdcommenter)                             | 注释工具                             | `,cc` `,cu`
[godlygeek/tabular](http://www.github.com/godlygeek/tabular)                                           | 文本排版工具                         | `,t`
[terryma/vim-multiple-cursors](http://www.github.com/terryma/vim-multiple-cursors)                     | 多光标工具                           | `Ctrl` + `n`
[airblade/vim-gitgutter](http://www.github.com/airblade/vim-gitgutter)                                 | git增删改状态侧边栏                  |
[tpope/vim-fugitive](http://www.github.com/tpope/vim-fugitive)                                         | git工具                              |
[mattn/gist-vim](http://www.github.com/mattn/gist-vim)                                                 | gist工具                             |
[mattn/webapi-vim](http://www.github.com/mattn/webapi-vim)                                             | 没仔细研究，gits插件依赖于此插件     |
[scrooloose/syntastic](http://www.github.com/scrooloose/syntastic)                                     | 代码检查，php代码风格检查依赖于phpcs |
[stephpy/vim-php-cs-fixer](http://www.github.com/stephpy/vim-php-cs-fixer)                             | php代码规范化工具                    | `,f`
[shawncplus/phpcomplete.vim](http://www.github.com/shawncplus/phpcomplete.vim)                         | php自动补全增强，依赖patch版ctags    |
[arnaud-lb/vim-php-namespace](http://www.github.com/arnaud-lb/vim-php-namespace)                       | php命名空间自动补全                  | `,u` `,e`
[hynek/vim-python-pep8-indent](http://www.github.com/hynek/vim-python-pep8-indent)                     | python pep8缩进                      |
[mattn/emmet-vim](http://www.github.com/mattn/emmet-vim)                                               | html、css代码补全                    |
[Glench/Vim-Jinja2-Syntax](http://www.github.com/Glench/Vim-Jinja2-Syntax)                             | jinja2语法高亮                       |
[rodjek/vim-puppet](http://www.github.com/rodjek/vim-puppet)                                           | puppet语法高亮                       |
[tpope/vim-markdown](http://www.github.com/tpope/vim-markdown)                                         | markdown语法高亮                     |
[vim-scripts/nginx.vim](http://www.github.com/vim-scripts/nginx.vim)                                   | nginx语法高亮                        |
[othree/html5.vim](http://www.github.com/othree/html5.vim)                                             | html语法高亮，貌似也有自动补全功能。 |
[sprsquish/thrift.vim](http://www.github.com/sprsquish/thrift.vim)                                     | thrift语法高亮                       |
[cstrahan/vim-capnp](http://www.github.com/cstrahan/vim-capnp)                                         | capnp语法高亮                        |
[othree/javascript-libraries-syntax.vim](http://www.github.com/othree/javascript-libraries-syntax.vim) | js库语法高亮                         |
