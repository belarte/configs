FROM ubuntu:rolling

RUN apt-get update && apt-get install -y \
    vim \
    tmux git ripgrep \
    powerline fonts-powerline powerline-gitstatus \
    cmake build-essential \
    cppcheck libgtest-dev \
    python3-dev python3-venv python3-pip python3-pytest \
    htop wget autoconf automake pkg-config

ARG user=bruno
ARG home=/home/$user

RUN groupadd -r $user && \
    useradd -m -s /bin/bash -g $user $user

RUN cd /usr/src/googletest/googletest && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=RELEASE -DBUILD_SHARED_LIBS=ON .. && \
    make && \
    cp libgtest* /usr/lib/ && \
    cd .. && \
    rm -rf build

RUN git clone https://github.com/universal-ctags/ctags.git && \
    cd ctags && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install

COPY vimrc $home/.vimrc
COPY tmux.conf $home/.tmux.conf
COPY bashrc $home/.bashrc
COPY vim $home/.vim/
RUN chown -R $user $home && chgrp -R $user $home

USER $user
RUN git clone https://github.com/VundleVim/Vundle.vim.git $home/.vim/bundle/Vundle.vim && \
    vim +PluginInstall +qall && \
    cd $home/.vim/bundle/YouCompleteMe && python3 ./install.py --clang-completer
WORKDIR $home

RUN git config --global user.name "Bruno Belarte" && \
    git config --global user.email "bruno.belarte@gmail.com" && \
    git config --global credential.helper store && \
    git config --global alias.st status && \
    git config --global alias.amend "commit --amend --no-edit" && \
    git config --global alias.lg "log --oneline --decorate --graph --color --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%cr) %C(cyan)<%an>%C(reset)' --abbrev-commit"

RUN pip3 install websockets
