typeset -gA key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ "${key[Home]}"		]] && bindkey -- "${key[Home]}"			beginning-of-line
[[ "${key[End]}"		]] && bindkey -- "${key[End]}"			end-of-line
[[ "${key[Insert]}"		]] && bindkey -- "${key[Insert]}"		overwrite-mode
[[ "${key[Backspace]}"		]] && bindkey -- "${key[Backspace]}"		backward-delete-char
[[ "${key[Delete]}"		]] && bindkey -- "${key[Delete]}"		delete-char
[[ "${key[Up]}"			]] && bindkey -- "${key[Up]}"			up-line-or-history
[[ "${key[Down]}"		]] && bindkey -- "${key[Down]}"			down-line-or-history
[[ "${key[Left]}"		]] && bindkey -- "${key[Left]}"			backward-char
[[ "${key[Right]}"		]] && bindkey -- "${key[Right]}"		forward-char
[[ "${key[PageUp]}"		]] && bindkey -- "${key[PageUp]}"		beginning-of-buffer-or-history
[[ "${key[PageDown]}"		]] && bindkey -- "${key[PageDown]}"		end-of-buffer-or-history
[[ "${key[Shift-Tab]}"		]] && bindkey -- "${key[Shift-Tab]}"		reverse-menu-complete
[[ "${key[Control-Left]}" 	]] && bindkey -- "${key[Control-Left]}"		backward-word
[[ "${key[Control-Right]}" 	]] && bindkey -- "${key[Control-Right]}"	forward-word

if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
