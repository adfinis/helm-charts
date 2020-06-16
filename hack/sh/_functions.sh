info () {
    echo "${1}" 1>&2
}

err () {
    echo "${1}" 1>&2
    exit 1
}
