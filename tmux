# Allow switching the currently focused pane by mouse click.
setw -g mode-mouse on
set-option -g mouse-select-pane on
set -g mode-mouse on

# Set the title of the current window to something descriptive for the entire tmux session
set-option -g set-titles on
set-option -g set-titles-string '#H:#S.#I.#P #W #T' # window number,program name, active(or not)

# Set C-a as the keybinder
set-option -g prefix C-a
unbind-key C-b

# Resizing?
setw -g aggressive-resize on

# History!
set -g history-limit 100000

# Some key bindings for convenience
bind-key | split-window -h
bind-key - split-window -v

set -g status-bg black
set -g status-fg white 
