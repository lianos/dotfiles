# Environment Variabes ========================================================

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!! export `GITHUB_PAT` environment var from local ~/.bash_profile file !!!!!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


# Useful Aliases ==============================================================
alias l="ls -lh"
alias ll="ls -lhA"

# More intense bash setup =====================================================
#
# We need a newer version of bash for macos via homebrew
# https://www.shell-tips.com/mac/upgrade-bash/#gsc.tab=0
#
# 1. Install updated bash via homebrew
#
#    ```
#    brew install bash
#    ```
#
# 2. Update /private/etc/shells to include homebrew installed bash
#
#    ```
#    $ cat /private/etc/shells          # /usr/local/bin/bash not there
#    $ echo $(brew --prefix)/bin/bash | sudo tee -a /private/etc/shells
#    $ cat /private/etc/shells          # /usr/local/bin/bash now there
#    ```
# 
# 3. Update shell used by user using `chpass`
#
#    ```
#    $ sudo chpass -s /usr/local/bin/bash ${USER}
#    ```
# 
# 4. Install appropriate bash completions
#    $ brew install bash-completion@2
#
# 5. Install bash-git-prompt
#    $ brew install bash-git-prompt

BREW_PREFIX=$(brew --prefix)

# Activate bash completions
[[ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]] && . "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"

# Activate git prompt
if [ -f "${BREW_PREFIX}/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="${BREW_PREFIX}/opt/bash-git-prompt/share"
  source "${BREW_PREFIX}/opt/bash-git-prompt/share/gitprompt.sh"
fi
