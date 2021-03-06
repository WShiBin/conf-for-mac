# sync files on Mac to this folder
rsync -auv ~/.SwitchHosts                   ./
rsync -auv ~/.cheat                         ./
rsync -auv ~/.config/cheat                  ./.config/cheat
rsync -auv ~/.config/neofetch               ./.config/neofetch
rsync -auv ~/.config/tmuxinator             ./.config/tmuxinator
rsync -auv ~/.gitconfig                     ./
rsync -auv ~/.m2/settings.xml               ./.m2/
rsync -auv ~/.gradle/init.gradle            ./.gradle/
rsync -auv ~/.vim_runtime/my_configs.vim    ./.vim_runtime/
rsync -auv ~/.zshrc                         ./
rsync -auv ~/Alfred                         ./
rsync -auv ~/.tmux.conf.local               ./
