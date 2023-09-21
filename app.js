

async function getData(){
    const data = await fetch("http://localhost:3000/region")
    const json = await data.json()
    
    console.log(json)
    for(var i=0;i<=json.length-1;i++){
    const body = document.getElementById("body")
    const radio = document.createElement('input')
    radio.type = "radio"
    }

}
getData()