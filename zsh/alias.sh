#!/bin/zsh
ALIASES_FILE=~/.config/zsh/aliases
add_alias() {
    echo -n "Name: "
    read alias_name
    echo -n "Command: "
    read alias_command
    echo "alias $alias_name='$alias_command'" >> $ALIASES_FILE
    echo "Alias added: alias $alias_name='$alias_command'"
    echo "Don't forget to source your ~/.zshrc or restart your terminal to apply changes."
}
if [ ! -f $ALIASES_FILE ]; then
    mkdir -p ~/.config/zsh
    touch $ALIASES_FILE
    echo "Created aliases file at $ALIASES_FILE"
fi
add_alias
