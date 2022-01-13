fetch("./kimcoMenu.html")
    .then(response => {
        return response.text()
    })
    .then(data => {
        document.querySelector("nav").innerHTML = data;
        const parser = new DOMParser()
        const doc = parser.parseFromString(data, "text/html")
        eval(doc.querySelector('script').textContent)
    });