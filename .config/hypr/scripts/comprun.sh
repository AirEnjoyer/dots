# ~/.config/hypr/scripts/run_comprun_tmux.sh
#!/bin/bash
# Always send Ctrl+S, Down, and run comprun in the RunPane

# Optional: small delay to ensure tmux is ready
sleep 0.1

# Find the pane named RunPane
RUN_PANE=$(tmux list-panes -a -F "#{session_name}:#{window_index}.#{pane_index} #{pane_title}" | grep "RunPane" | awk '{print $1}')

if [ -z "$RUN_PANE" ]; then
    # If RunPane doesn't exist, create it at the bottom of the current window
    tmux split-window -v -p 20 -c "#{pane_current_path}" -P -F "#{pane_id}" "bash"
    RUN_PANE=$(tmux list-panes -F "#{pane_id}" | tail -n1)
    tmux select-pane -T "RunPane" -t "$RUN_PANE"
fi

# Send the sequence to RunPane
tmux send-keys -t "$RUN_PANE" C-s
tmux send-keys -t "$RUN_PANE" Down
tmux send-keys -t "$RUN_PANE" "~/scripts/comprun" C-m

