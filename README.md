### 安装

    wget https://raw.github.com/thbourlove/vim/master/install -O - | sh

### ctags安装

    wget https://raw.github.com/thbourlove/vim/master/install_ctags -O - | sh

### ctags 使用姿势

    ctags -R --fields=+aimS --languages=php --php-kinds=cidf --exclude=tests .
