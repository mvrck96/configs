set -g mouse on
set -g default-terminal "screen-256color"

# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix


# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %


set-option -g base-index 1
set-option -g display-time 2000

# Window: Movements
bind-key L last-window
bind-key -r ( select-window -t :-
bind-key -r ) select-window -t :+

#####################
### DESIGN CHANGES ###
######################

#  modes
setw -g clock-mode-colour colour5
setw -g mode-style 'fg=colour1 bg=colour18 bold'

# panes
set -g pane-border-style 'fg=colour39 bg=colour0'
set -g pane-active-border-style 'bg=colour0 fg=colour47'

# statusbar
set -g status-position bottom
set -g status-justify left
set -g status-style 'bg=colour67 fg=colour225 dim'
set -g status-left ''
set -g status-right '#[fg=colour11,bg=colour24] %d/%m #[fg=colour11, bg=colour24] %H:%M '
set -g status-right-length 50
set -g status-left-length 20

setw -g window-status-current-style 'fg=colour9 bg=colour23 bold'
setw -g window-status-current-format ' #I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F '

setw -g window-status-style 'fg=colour47 bg=colour24'
setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-style 'fg=colour46 bg=colour240 bold'

# messages
set -g message-style 'fg=colour46 bg=colour240 bold'


