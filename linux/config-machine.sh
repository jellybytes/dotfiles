# color prompt
echo "" >> ~/.bashrc
# original: export PS1="\[\e[30m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[30m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]\[\e[30m\]]\[\e[m\]\$ "
echo "export PS1=\"\[\e[30m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[30m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]\[\e[30m\]]\[\e[m\]\\$ \"" >> ~/.bashrc