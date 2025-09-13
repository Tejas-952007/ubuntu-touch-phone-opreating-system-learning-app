.pragma library

function generateCertificate(userName, score) {
    return "Certificate: " + userName + " scored " + score + "%"
}

function verifyCertificate(certString) {
    return certString.startsWith("Certificate:")
}
