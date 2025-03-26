const PROJECT_ID = '67e380b700040a256953'
const DATABASE_ID = '67e3817f0024926758db'
const COLLECTION_ID = '67e381ba0020f3492e07'
const { Client } = Appwrite;


let client
let database
 
function init() {
    client = new Client( PROJECT_ID)
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject(  PROJECT_ID )
    database = new Appwrite.Databases( client )
}

function getData() {

}

function render() { }

window.addEventListener("load", init) 