###
# environment - Set general shell options and define environment variables.
###

#
# Options
#

# Set general options.
setopt COMBINING_CHARS       # Combine special chars into one char (ie: accents).
setopt INTERACTIVE_COMMENTS  # Enable comments in interactive shell.
setopt RC_QUOTES             # Allow 'Hitchhiker''s Guide' instead of 'Hitchhiker'\''s Guide'.
setopt NO_MAIL_WARNING       # Don't print a warning message if a mail file has been accessed.

# Set job options.
setopt LONG_LIST_JOBS        # List jobs in the long format by default.
setopt AUTO_RESUME           # Attempt to resume existing job before creating a new process.
setopt NOTIFY                # Report status of background jobs immediately.
setopt NO_BG_NICE            # Don't run all background jobs at a lower priority.
setopt NO_HUP                # Don't kill jobs on shell exit.
setopt NO_CHECK_JOBS         # Don't report on jobs when shell exit.

#
# Init
#

# Use built-in paste magic.
autoload -Uz bracketed-paste-url-magic
zle -N bracketed-paste bracketed-paste-url-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
