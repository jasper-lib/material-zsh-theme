local git_info='$(git_prompt_info)'

local my_git_info='$(my_git_prompt_info)'
my_git_prompt_info() {
	local prompt_info="$(git_prompt_info)"
	if [ -z "${prompt_info}" ]; then
		echo -n " :: "
	else
		echo -n " ${prompt_info} "
	fi
}

PROMPT="%{$fg_bold[blue]%}❯\
%(?:%{$fg_bold[green]%}❯:%{$fg_bold[red]%}❯)%{$reset_color%} \
%{$fg[green]%}%m \
%{$fg[white]%}:: \
%{$fg_bold[yellow]%}%c%{$reset_color%}\
${my_git_info}\
%{$fg[white]%}%T%{$reset_color%}
%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"