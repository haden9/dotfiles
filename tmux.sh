# Create a session
tmux new-session -d -s some_name
# Name session
tmux rename-window 'some_name'
# Select window on session falafel
tmux select-window -t some_name:0
# Navigate directory
tmux send-keys 'cd ~/some_directory'
# Enter that directory
tmux send-keys -t :0 Enter
tmux split-window -v -t 0
# Attach recently created session
tmux -2 attach-session -t some_name
