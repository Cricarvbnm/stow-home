function _proxy-set() {
    export http_proxy="$1"
    export HTTP_PROXY="$http_proxy"
    export https_proxy="$http_proxy"
    export HTTPS_PROXY="$http_proxy"
    export all_proxy="$http_proxy"
    export ALL_PROXY="$http_proxy"
}

function proxy-set() {
    _proxy-set 'http://localhost:7890'
}

function proxy-unset() {
    _proxy-set ''
}

proxy-set

