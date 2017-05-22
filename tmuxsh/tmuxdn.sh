SESSION=dn
tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION
tmux new-window -t $SESSION:1 -n vim
tmux new-window -t $SESSION:2 -n react
tmux new-window -t $SESSION:3 -n rails

tmux select-window -t $SESSION:3
tmux split-window -v
tmux send-keys 'cd ~/Projects/datalink/iris; vagrant up' C-m

tmux select-window -t $SESSION:2
tmux split-window -v
tmux send-keys 'cd ~/Projects/datalink/dips-client; yarn start'

tmux select-window -t $SESSION:1
tmux send-keys 'cd ~/Projects/datalink/dips-client; vim' C-m

tmux attach -t $SESSION
