cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    ds inject set_prompt.sh
    [[ -d ggpg ]] \
        || git clone https://github.com/easygnupg/ggpg
}
