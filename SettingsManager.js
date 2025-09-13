var _token = ""

function saveToken(token) {
    _token = token
    console.log("Token saved:", token)
}

function getToken() {
    return _token
}

function clearToken() {
    _token = ""
    console.log("Token cleared")
}
