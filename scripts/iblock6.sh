#!/bin/bash

iblock1=( l17955.ldschurch.org l17956.ldschurch.org l17957.ldschurch.org l17958.ldschurch.org l17959.ldschurch.org )
iblock2=( l17960.ldschurch.org l17961.ldschurch.org l17962.ldschurch.org l17963.ldschurch.org l17964.ldschurch.org )
iblock3=( l17965.ldschurch.org l18366.ldschurch.org l18367.ldschurch.org l18368.ldschurch.org l18369.ldschurch.org )
iblock4=( l20100.ldschurch.org l20101.ldschurch.org l20102.ldschurch.org l20103.ldschurch.org l20104.ldschurch.org )
iblock5=( l20105.ldschurch.org l20106.ldschurch.org l20107.ldschurch.org l20108.ldschurch.org l20109.ldschurch.org )
iblock6=( l20315.ldschurch.org l20316.ldschurch.org l20317.ldschurch.org )
iblock7=( l20318.ldschurch.org l20319.ldschurch.org l20320.ldschurch.org )

split_list=()
for ssh_entry in "${iblock6[@]:1}"; do
    split_list+=( split-pane ssh admtgm@"$ssh_entry" ';' )
done

tmux new-session ssh admtgm@"${iblock6[0]}" ';' \
    "${split_list[@]}" \
    select-layout tiled ';' \
    set-option -w synchronize-panes
