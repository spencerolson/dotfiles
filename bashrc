source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

export PATH=$PATH:/usr/local/bin
export PGHOST=localhost
export PS1="\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;36m\]\W\[\e[0m\]\[\e[00;37m\]\\$\[\e[0m\]"
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
export NODE_PATH=/opt/lib/node_modules

alias chrome="open -a 'google chrome'"
alias r3c="CANVAS_RAILS3=true bundle exec rails console"
alias postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias bake="bundle exec rake"
alias be="bundle exec"
alias dev="RAILS_ENV=development"
alias test="RAILS_ENV=test"
alias prod="RAILS_ENV=production"
alias assets="bake canvas:compile_assets[false]"
alias jassets="bake js:generate"
alias doc_assets="bake canvas:compile_assets[true]"
alias migrate_test="test bake db:migrate"
alias migrate_dev="dev bake db:migrate"
alias dev_console="dev be script/console"
alias bu='bundle update'
alias dev_server="dev be script/server"
alias test_server="test be script/server"
alias dev_dcm="dev bake db:drop db:create db:migrate"
alias test_dcm="test bake db:drop db:create db:migrate"
alias lid="dev bake db:load_initial_data"
alias dj="be script/delayed_job run"
alias sandbox="be rails c -s"
alias d="git diff HEAD~"
alias xcode="open *.xcodeproj"
chruby ruby-2.1.6