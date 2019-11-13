#function fish_prompt
#
##	if not set -q __fish_prompt_user_host
##		set -g __fish_prompt_user_host (printf '%s%s--%s' (set_color green) (hostname|cut -d . -f 1) (set_color normal))
##		#set -g __fish_prompt_user_host (printf '%s%s--%s%s' (set_color green) (hostname|cut -d . -f 1) $USER (set_color normal))
##	end
#	if not set -q __fish_prompt_user_host
#		set -g __fish_prompt_user_host (printf '%s%s@%s%s' (set_color green) (hostname|cut -d . -f 1) $USER (set_color normal))
#	end
#
#	# set current working directory and repalace homedir with '~'
#	set -g __fish_prompt_pwd (printf "%s%s%s" (set_color --bold white) (pwd | sed "s!^$HOME!~!") (set_color normal))
#
#	printf "%s%s%s%s%s%s" (set_color white) (echo "╭─(") $__fish_prompt_user_host (set_color white) (echo ")-(") $__fish_prompt_pwd
##	set_color white
##	printf "╭─("
##	printf "%s" $__fish_prompt_user_host
##	printf ")-("
##	set_color --bold white
##	printf "$PWD"
##	set_color normal
#	set_color white
#	printf ")"
#	set_color white
#	printf "\n╰─(#)"
#	set_color normal
#end

# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate ' 👍  '
set __fish_git_prompt_char_conflictedstate ' ⚠️  '
set __fish_git_prompt_char_dirtystate ' 💩  '
set __fish_git_prompt_char_invalidstate ' 🤮  '
set __fish_git_prompt_char_stagedstate ' 🚥  '
set __fish_git_prompt_char_stashstate ' 📦  '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍  '
set __fish_git_prompt_char_upstream_ahead ' ☝️  '
set __fish_git_prompt_char_upstream_behind ' 👇  '
set __fish_git_prompt_char_upstream_diverged ' 🚧  '
set __fish_git_prompt_char_upstream_equal ' 💯 ' 


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)
  echo -n "🐠  "
  set_color normal
end
