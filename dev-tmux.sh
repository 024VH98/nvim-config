#!/bin/sh
tmux new -d -s dv3 -n shells &&
    tmux send-keys -t "dv3:shells" "cd atria/dv3/" ENTER &&
    tmux send-keys -t "dv3:shells" "tmux split-window -h -c '#{pane_current_path}'" ENTER &&
    tmux send-keys -t "dv3:shells" "tmux new-window -n editor -c '#{pane_current_path}'" ENTER
    # tmux send-keys -t "dv3:editor" "neo" ENTER
tmux new -d -s dv3-server -n shells &&
    tmux send-keys -t "dv3-server:shells" "cd atria/dv3/" ENTER &&
    tmux send-keys -t "dv3-server:shells" "tmux split-window -h -c '#{pane_current_path}'" ENTER
tmux new -d -s sandbox -n first &&
    tmux send-keys -t "sandbox:first" "cd ~/" ENTER &&
    tmux send-keys -t "sandbox:first" "tmux new-window -n second -c '#{pane_current_path}'" ENTER
