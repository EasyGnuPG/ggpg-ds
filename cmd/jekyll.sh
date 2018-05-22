cmd_jekyll_help() {
    cat <<_EOF
    jekyll
        Start jekyll inside the container.

_EOF
}

cmd_jekyll() {
    set -x
    cd ggpg/
    git checkout gh-pages
    cd -
    ds exec jekyll serve --watch --host 0.0.0.0 "$@"
}
