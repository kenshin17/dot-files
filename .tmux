set -g prefix F1
set -g pane-base-index 1

# set title on
set -g set-titles on

# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on

# split windows
bind - split-window -v
bind | split-window -h


set -g terminal-overrides 'xterm*:XT:smcup@:rmcup@'
set -ga terminal-overrides ",rxvt*:XT"

# Don't start a login shell
set -g default-command bash

# Set default terminal to screen-256color
set -g default-terminal "screen-256color"

# Status line
set -g status-left '[#(whoami)]'
set -g status-right-length 60
set -g status-right '| #(whoami)@#H | %H:%M %a %d-%m-%Y'
#set -g status-right '| #(whoami)@#H | #(cut -d " " -f 1-3 /proc/loadavg) | %H:%M %a %d-%m-%Y'


#### COLOUR (Solarized dark)

# default statusbar colors
set-option -g status-bg black
set-option -g status-fg white
set-option -g status-attr bold

# default window title colors
set-window-option -g window-status-fg colour254
set-window-option -g window-status-bg colour135
set-window-option -g window-status-attr italics

# mouse on
set-window-option -g window-status-current-bg white
set-window-option -g window-status-current-fg red
set-window-option -g window-status-current-attr bold,italics
set-option -g pane-border-fg green
set-option -g pane-active-border-fg colour46

# message text
set-option -g message-bg colour235
set-option -g message-fg colour196

# pane number display
set-option -g display-panes-active-colour colour20
set-option -g display-panes-colour colour196

# clock
set-window-option -g clock-mode-colour colour40

# Reload config
unbind r
bind r source-file ~/.tmux.conf \; display "Config reloaded!"
bind k clear-history \; display "Cleared history!"
