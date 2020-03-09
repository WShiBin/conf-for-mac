#!/bin/bash
# sync to local

rsync -auv ./.cheat                         ~/
rsync -auv ./.config                        ~/
rsync -auv ./.gitconfig                     ~/.gitconfig
rsync -auv ./.gradle/init.gradle            ~/.gradle/
rsync -auv ./.m2/settings.xml               ~/.m2/
rsync -auv ./.SwitchHosts                   ~/
rsync -auv ./.vim_runtime                   ~/
rsync -auv ./.zshrc                         ~/
rsync -auv ./Alfred                         ~/
rsync -auv ./.tmux.conf.local               ~/
rsync -auv ./.clang-format                  ~/
rsync -auv ./.clang-format                  ~/