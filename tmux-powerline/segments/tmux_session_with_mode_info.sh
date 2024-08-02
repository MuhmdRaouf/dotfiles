#!/bin/bash
# shellcheck shell=bash

TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="${TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT:-#S:#I.#P}"

generate_segmentrc() {
	read -r -d '' rccontents <<EORC
# Session info format to feed into the command: tmux display-message -p
# For example, if FORMAT is '[ #S ]', the command is: tmux display-message -p '[ #S ]'
export TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="${TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT}"
EORC
	echo "$rccontents"
}

run_segment() {
	# Get the session info
	session_info=$(tmux display-message -p "$TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT")
	# Get the mode indicator
	mode_indicator=$(mode_indicator_run_segment)

	# Combine the session info and mode indicator
	echo "$session_info | $mode_indicator"
	return 0
}

mode_indicator_run_segment() {
	__process_settings

	# Colors.
	normal_text_color="#[fg=$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR]"
	prefix_text_color="#[fg=$TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR]"
	mouse_text_color="#[fg=$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR]"
	copy_text_color="#[fg=$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR]"
	suspend_text_color="#[fg=$TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR]"

	# Separator.
	separator="#[fg=$TMUX_POWERLINE_CUR_SEGMENT_FG]$TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT"

	# Populate segment.
	segment=""
	__normal_and_prefix_mode_indicator
	__mouse_mode_indicator
	__copy_mode_indicator

	echo "$segment"
	return 0
}

__normal_and_prefix_mode_indicator() {
	if [ "$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED" != "true" ]; then
		return 0
	fi

	normal_mode="$normal_text_color$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT"
	prefix_mode="$prefix_text_color$TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT"
	suspend_mode="$suspend_text_color$TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT"

	if [ "$(tmux show-option -qv key-table)" = "suspended" ]; then
		normal_and_prefix_indicator="$suspend_mode"
	else
		normal_and_prefix_indicator="#{?client_prefix,$prefix_mode,$normal_mode}"
	fi

	if [ -z "$segment" ]; then
		segment+="$normal_and_prefix_indicator"
	else
		segment+="$separator$normal_and_prefix_indicator"
	fi
}

__mouse_mode_indicator() {
	if [ "$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED" != "true" ]; then
		return 0
	fi

	# Mouse mode status - check window, then session, then global settings.
	mouse_mode_status=$(tmux show-options -w | grep mouse | cut -d ' ' -f2) # Window-level options
	if [ -z "$mouse_mode_status" ]; then
		mouse_mode_status=$(tmux show-options | grep mouse | cut -d ' ' -f2) # Session-level options
		if [ -z "$mouse_mode_status" ]; then
			mouse_mode_status=$(tmux show-options -g | grep mouse | cut -d ' ' -f2) # Global options
		fi
	fi

	if [ "$mouse_mode_status" != "on" ]; then
		return 0
	fi

	mouse_indicator="$mouse_text_color$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT"

	if [ -z "$segment" ]; then
		segment+="$mouse_indicator"
	else
		segment+="$separator$mouse_indicator"
	fi
}

__copy_mode_indicator() {
	if [ "$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED" != "true" ]; then
		return 0
	fi

	# Note that so long as the *_COPY_MODE_ENABLED flag is set, this will always
	# add a non-empty section to the segment, regardless of whether copy mode is
	# actually active. This is because this block of code uses tmux's #()/#{}
	# syntax for command substitution that doesn't get evaluated until runtime,
	# so for the purposes of this shell script it's always non-empty.
	#
	# Because of this, __copy_mode_indicator should always be called last
	# (i.e. it will always be the rightmost section of the segment), otherwise
	# the separator will be printed even if copy mode isn't active.
	copy_mode="$copy_text_color$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT"
	if [ -z "$segment" ]; then
		segment+="#{?pane_in_mode,$copy_mode,}"
	else
		segment+="#{?pane_in_mode,$separator$copy_mode,}"
	fi
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED="${NORMAL_AND_PREFIX_MODE_ENABLED_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT="${NORMAL_MODE_TEXT_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR="${NORMAL_MODE_TEXT_COLOR_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT="${PREFIX_MODE_TEXT_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR="${PREFIX_MODE_TEXT_COLOR_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED="${MOUSE_MODE_ENABLED_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT="${MOUSE_MODE_TEXT_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR="${MOUSE_MODE_TEXT_COLOR_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED="${COPY_MODE_ENABLED_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT="${COPY_MODE_TEXT_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR="${COPY_MODE_TEXT_COLOR_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT="${SUSPEND_MODE_TEXT_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR="${SUSPEND_MODE_TEXT_COLOR_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT" ]; then
		export TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT="${SEPARATOR_TEXT_DEFAULT}"
	fi
}
