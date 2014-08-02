# some more ls aliases
alias ls='ls -FGph'
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'
#alias rspec='rspec -c'

alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

# Git
alias g='git'
alias such='git'
alias very='git'
alias wow='git status'
alias be='bundle exec'
alias bu='bundle update'

# CocoaPods
alias pod-reload='rm -rf Pods/ && rm -rf *.xcworkspace/ && rm Podfile.lock && pod install'

# Heroku
alias h='heroku'
alias hcr='heroku run console --remote'
alias hlr='heroku logs --tail --remote'
alias hmigrate='heroku run rake db:migrate --remote'
alias hrestart='heroku restart --remote'

alias pag="ps aux | grep "

alias idunno-rofl="echo '¯\(ツ)/¯'"
alias screweverything="echo '(╯°□°）╯︵ ┻━┻'"
alias disapproval="echo 'ಠ_ಠ'"
