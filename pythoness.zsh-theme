# Pythoness Programmer Zsh Theme (v4.0 - Fixed for oh-my-zsh)

autoload -U colors && colors

# --- Color Palette ---
# Use %F{color} format for 256-color support
CREME="%F{230}"
LIGHT_GREEN="%F{46}"
LILAC="%F{183}"
HOT_PINK="%F{205}"
BRIGHT_BLUE="%F{39}"
RESET_COLOR="%f"

# --- Git Prompt Customization ---
ZSH_THEME_GIT_PROMPT_PREFIX="${CREME}<git:(${HOT_PINK}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${CREME})>"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# --- Virtual Env Customization ---
ZSH_THEME_VIRTUALENV_PREFIX="${LILAC}("
ZSH_THEME_VIRTUALENV_SUFFIX=")${RESET_COLOR}"

# --- Prompt Definition ---
# Ensure RPROMPT is empty to prevent interference
RPROMPT=""
# Direct PROMPT assignment - no trailing spaces or newlines
PROMPT="${CREME}┌─[${LIGHT_GREEN}%n@%m${CREME}] - [${CREME}%~${CREME}] - [${BRIGHT_BLUE}%D{%a %b %d, %H:%M}${CREME}]${RESET_COLOR}"$'\n'"${CREME}└─[${CREME}%!${CREME}] $(git_prompt_info)$(virtualenv_prompt_info)${RESET_COLOR}"
