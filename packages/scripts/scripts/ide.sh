#!/bin/sh

tmux split-window -v -p 50
tmux split-window -h -p 66
tmux split-window -h -p 50
tmux resize-pane -D 15
