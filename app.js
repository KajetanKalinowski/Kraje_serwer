

async function getData(){
    const data = await fetch("http://localhost:3000/region")
    const json = await data.json()
    
    console.log(json)
    for(var i=0;i<=json.length-1;i++){
    const divradio = document.getElementById("divradio")
    const radio = document.createElement('input')
    radio.type = "radio"
    radio.name = "radia"
    radio.value = "radia1"
    radio.id = json[i].kontynent
    radio.addEventListener('change',()=>{
        console.log(radio.id)
        radioFetch(radio.id)
    })
    const label = document.createElement("label")
    label.innerHTML = json[i].kontynent
    divradio.appendChild(radio)
    divradio.appendChild(label)
    }

}
getData()
async function radioFetch(id){
    document.getElementById("divmenu").innerHTML = ""
    const url = await fetch(`http://localhost:3000/kontynent/${id}`)
    const json = await url.json()
    for(var i=0;i<=json.length-1;i++){
        const h3 = document.createElement("h3")
        const divmenu = document.getElementById("divmenu")
    h3.innerHTML = json[i].name
    divmenu.appendChild(h3)
    }
    
}
async function maxPop(){
    const data = await fetch(`http://localhost:3000/maxpopulacja`)
    const json = await data.json()
    const range = document.getElementById("range")
    range.setAttribute('max',json[0].population)
    console.log(json)
    range.addEventListener('input',(event)=>{
        var string1 = event.target.value
        document.getElementById("value").innerHTML = string1
    })
    for(var i=0;i<=10;i++){
        if(i!=0){
            const option = document.createElement('option')
            option.value = parseInt(parseInt(json[0].population)/10*i)
            option.label = `${parseInt(parseInt(json[0].population)/10*i)}`
            document.getElementById('values').appendChild(option)


        }
        
    }
}
maxPop()