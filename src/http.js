import router from './router'

const http = {
  async fetchApi (url, method, form = {}) {
    debugger
    let resp = await fetch(url, {
      method: method,
      headers: this.generateHeaders(),
      body: form
    })
    debugger
    let token = resp.headers.get('X-New-JWT-Token')
    if (token) {
      localStorage.setItem('token', token)
    }
    if (resp.status !== 200) {
      router.push('/login')
    }
    let json = await resp.json()
    return json
  },
  generateHeaders () {
    let token = localStorage.getItem('token')
    let headers = {
      'Content-Type': 'application/json;charset=UTF-8'
    }
    if (token) {
      headers.Authorization = token
    }
    return headers
  }
}

export default http
