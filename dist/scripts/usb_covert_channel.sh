#!/bin/bash

SESSION="covertchannel"

# Create tmux session in detached mode
tmux new-session -d -s $SESSION

# Window 1: Go to the Go server folder and run the server
tmux rename-window -t $SESSION:0 'GoServer'
tmux send-keys -t $SESSION:0 'cd /root/CovertChannel-master/Server/Go && go run server.go' C-m

# Window 2: Netcat listener
tmux new-window -t $SESSION:1 -n 'Netcat'
tmux send-keys -t $SESSION:1 'nc -lvnp 4444' C-m
