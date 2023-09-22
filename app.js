

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
    document.getElementById('range').setAttribute('max',json[0].population)
    document.getElementById('range').setAttribute('step',parseInt(json[0].population)/10)
    console.log(json)
    for(var i=0;i<=10;i++){
        const option = document.createElement('option')
        option.value = parseInt(parseInt(json[0].population)/10 *i).toLocaleString('en-US')
        option.label = `${parseInt(parseInt(json[0].population)/10 *i).toLocaleString('en-US')}`
        document.getElementById('values').appendChild(option)
        
        
    }
    document.getElementById('range').addEventListener("input", (event) => {
        var newString = ''
        var oldString = event.target.value
        console.log(parseInt(oldString).toLocaleString())
         document.getElementById('value').innerHTML = parseInt(oldString).toLocaleString('en-US');
    });
}
maxPop()