function fish_prompt --description 'Write out the prompt'
    # Save our status
    set -l last_pipestatus $pipestatus

    set -l suffix
    switch $fish_bind_mode
      case default
        set suffix '<<'
      case insert
        set suffix '>>'
      case replace_one
        set suffix '^'
      case visual
        set suffix 'V'
      case '*'
        echo '?'
    end

    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_use_informative_chars 0
    set -g __fish_git_prompt_color_branch "#e0af68"
    set -g __fish_git_prompt_showupstream name
    set -g __fish_git_prompt_char_stateseparator " "
    set -g __fish_git_prompt_showdirtystate yes
    set -g __fish_git_prompt_color_stagedstate yellow
    set -g __fish_git_prompt_color_invalidstate red
    set -g __fish_git_prompt_color_cleanstate brgreen

    set -g __fish_git_prompt_char_upstream_ahead "^"
    set -g __fish_git_prompt_char_upstream_behind v
    set -g __fish_git_prompt_char_upstream_diverged "<>"
    set -g __fish_git_prompt_char_upstream_equal "="
    set -g __fish_git_prompt_char_untrackedfiles "..."
    set -g __fish_git_prompt_char_stashstate "\$"
    set -g __fish_git_prompt_char_dirtystate "*"
    set -g __fish_git_prompt_char_invalidstate "#"
    set -g __fish_git_prompt_char_stagedstate "+"
    set -g __fish_git_prompt_char_cleanstate ""

    # orange: e5c07b
    # purple: d55fde
    # blue:   52adf2
    echo -n -s (set_color --bold e5c07b) λ (set_color normal) \
        (set_color bbbbbb) " :: " \
        (set_color --bold d55fde) (prompt_pwd) (set_color bbbbbb) \
        (__fish_git_prompt) \
        (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) \
        (set_color $fish_color_status) $last_pipestatus) " "\
    (set_color --bold 9ece6a) "$suffix " (set_color normal)
end
