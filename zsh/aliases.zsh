alias reload!='. ~/.zshrc'

alias dotrc='. ~/.zshrc'
alias zshconfig="vim ~/.zshrc"
alias zshenv="vim ~/.zshenv"

# Serve a directory with pythons server
alias httpserve="python -m SimpleHTTPServer"
alias a2restart="sudo /usr/sbin/apachectl restart"

# Zsh Directory Bookmarks
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'
alias m4='alias g4="cd `pwd`"'
alias m5='alias g5="cd `pwd`"'
alias m6='alias g6="cd `pwd`"'
alias m7='alias g7="cd `pwd`"'
alias m8='alias g8="cd `pwd`"'
alias m9='alias g9="cd `pwd`"'
alias mdump='alias -L|grep -e "alias g[0-9]"|grep -v "alias m" > ~/.bookmarks'
alias lma='alias -L|grep -e "alias g[0-9]"|grep -v "alias m"|sed "s/alias //"'

# Actualizr project related
alias ghia='ghi list -- actualize'

touch ~/.bookmarks
source ~/.bookmarks

alias raildbr='rake db:drop; rake db:migrate; rake db:fixtures:load; rake db:seed; rake azr:seed:fitocracy'
alias stoplight='sudo launchctl unload /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias startlight='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias mocha='mocha -r better-stack-traces -r coffee-script'
alias cdcomp='cd /Users/jacob/School/comp492/comp392_assn1_email'

alias gitrecent='git for-each-ref --sort=-committerdate refs/heads/ | head -20'
alias unixtime='ruby -e "p Time.now.to_i"'
alias cofify='pbpaste | js2coffee | pbcopy'
alias yam2json='ruby -ryaml -rjson -e "puts JSON.pretty_generate(YAML.load(ARGF))"'
alias joltp='MOVER_DATABASE=production MOVER_ENVIRONMENT=development bin/jolt'
