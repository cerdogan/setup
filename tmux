set-option -g default-shell /bin/zsh

# Allow switching the currently focused pane by mouse click.
setw -g mode-mouse on
set-option -g mouse-select-pane on
set -g mode-mouse on

# Set the title of the current window to something descriptive for the entire tmux session
set-option -g set-titles on
set-option -g set-titles-string '#H:#S.#I.#P #W #T' # window number,program name, active(or not)

# Set C-a as the keybinder
set-option -g prefix C-a
# set-option -g prefix M-k
unbind-key C-b

# Resizing?
setw -g aggressive-resize on

# History!
set -g history-limit 100000

# Some key bindings for convenience for window splitting
bind-key | split-window -h
bind-key - split-window -v
bind-key k select-pane -U
bind-key j select-pane -D
bind-key h select-pane -L
bind-key l select-pane -R
#bind-key -n C-h run-shell "~/.scripts/tmux_or_vim_select_pane.sh h L"
#bind-key -n C-j run-shell "~/.scripts/tmux_or_vim_select_pane.sh j D"
#bind-key -n C-k run-shell "~/.scripts/tmux_or_vim_select_pane.sh k U"
#bind-key -n C-l run-shell "~/.scripts/tmux_or_vim_select_pane.sh l R"


set -g status-bg black
set -g status-fg white 
