# ported from bash function in stackoverflow answer
# https://stackoverflow.com/a/30029855/618710
#
# Prints list of all processes listening on a TCP port
# Provide a single argument to filter output
function listening
	if test (count $argv) -eq 0
		sudo lsof -iTCP -sTCP:LISTEN -n -P
	else if test (count $argv) -eq 1
		sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $argv[1]
	else
		echo "Usage: listening [pattern]"
	end
end
