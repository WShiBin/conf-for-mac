#!/bin/bash
# sync to local

rsync -auv ./.cheat                         /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.config                        /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.gitconfig                     /Users/ben/GitProject/conf-for-mac/test/.gitconfig
rsync -auv ./.gradle/init.gradle            /Users/ben/GitProject/conf-for-mac/test/.gradle/
rsync -auv ./.m2/settings.xml               /Users/ben/GitProject/conf-for-mac/test/.m2/
rsync -auv ./.SwitchHosts                   /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.vim_runtime                   /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.zshrc                         /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./Alfred                         /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.tmux.conf.local               /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.clang-format                  /Users/ben/GitProject/conf-for-mac/test/
rsync -auv ./.clang-format                  /Users/ben/GitProject/conf-for-mac/test/