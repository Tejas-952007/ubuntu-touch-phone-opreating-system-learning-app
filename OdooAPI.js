// Minimal stub for Odoo integration. Replace with real RPC/REST calls.

function getCourses() {
    // Return promise-like object
    return Promise.resolve([
        { id: 1, title: "Intro to Python", description: "Learn Python basics" },
        { id: 2, title: "Web Development", description: "HTML, CSS, JS basics" }
    ])
}

function login(email, password) {
    // Fake login
    if (email && password) {
        return Promise.resolve({ success: true, token: "demo-token" })
    }
    return Promise.reject({ success: false, error: "Invalid credentials" })
}

function sendSync(payload) {
    // send to Odoo (simulation)
    console.log("Syncing with Odoo:", JSON.stringify(payload))
    return Promise.resolve({ success: true })
}
