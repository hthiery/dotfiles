function fish_prompt

#	if not set -q __fish_prompt_user_host
#		set -g __fish_prompt_user_host (printf '%s%s--%s' (set_color green) (hostname|cut -d . -f 1) (set_color normal))
#		#set -g __fish_prompt_user_host (printf '%s%s--%s%s' (set_color green) (hostname|cut -d . -f 1) $USER (set_color normal))
#	end
	if not set -q __fish_prompt_user_host
		set -g __fish_prompt_user_host (printf '%s%s@%s%s' (set_color green) (hostname|cut -d . -f 1) $USER (set_color normal))
	end

	# set current working directory and repalace homedir with '~'
	set -g __fish_prompt_pwd (printf "%s%s%s" (set_color --bold white) (pwd | sed "s!^$HOME!~!") (set_color normal))

	printf "%s%s%s%s%s%s" (set_color white) (echo "╭─(") $__fish_prompt_user_host (set_color white) (echo ")-(") $__fish_prompt_pwd
#	set_color white
#	printf "╭─("
#	printf "%s" $__fish_prompt_user_host
#	printf ")-("
#	set_color --bold white
#	printf "$PWD"
#	set_color normal
	set_color white
	printf ")"
	set_color white
	printf "\n╰─(#)"
	set_color normal
end
