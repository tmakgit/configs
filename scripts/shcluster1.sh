#!/bin/bash

shcluster1=( l20026 l20027 l20028 l20029 l20030 )

split_list=()
for ssh_entry in "${shcluster1[@]:1}"; do
    split_list+=( split-pane ssh admtgm@"$ssh_entry" ';' )
done

tmux new-session ssh admtgm@"${shcluster1[0]}" ';' \
    "${split_list[@]}" \
    select-layout tiled ';' \
    set-option -w synchronize-panes
