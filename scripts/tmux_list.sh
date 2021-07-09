#!/bin/bash

ssh_list=( 10.115.65.90 10.115.65.91 10.115.65.92 10.115.65.93 10.115.65.94 )
ssh_list2=( 10.115.65.95 10.115.65.96 10.115.65.97 10.115.65.98 10.115.65.99 ) 
ssh_list3=( 10.115.65.108 10.115.65.250 10.115.65.251 10.115.65.252 10.115.65.253 )
ssh_list4=( 10.115.65.158 10.115.65.159 10.115.65.160 10.115.65.161 10.115.65.162 )
ssh_list5=( 10.115.65.163 10.115.65.164 10.115.65.165 10.115.65.166 10.115.65.167 )
ssh_list6=( 10.115.65.100 10.115.65.101 10.115.65.102 10.115.65.103 10.115.65.104 10.115.65.105 )
trouble1=( l17965.ldschurch.org l20100.ldschurch.org l20101.ldschurch.org l20102.ldschurch.org l20103.ldschurch.org )
trouble2=( l20105.ldschurch.org l20106.ldschurch.org l20107.ldschurch.org l20108.ldschurch.org l20109.ldschurch.org )
trouble3=( l20315.ldschurch.org l20316.ldschurch.org l20317.ldschurch.org l20318.ldschurch.org l20319.ldschurch.org )
trouble4=( l20320.ldschurch.org )

split_list=()
for ssh_entry in "${trouble4[@]:1}"; do
    split_list+=( split-pane ssh admtgm@"$ssh_entry" ';' )
done

tmux new-session ssh admtgm@"${trouble4[0]}" ';' \
    "${split_list[@]}" \
    select-layout tiled ';' \
    set-option -w synchronize-panes
