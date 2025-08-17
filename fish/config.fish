if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable greeting
set -g fish_greeting

# Show full path in prompt
set -gx fish_prompt_pwd_dir_length 0

# Set Gruvbox theme
theme_gruvbox dark medium
