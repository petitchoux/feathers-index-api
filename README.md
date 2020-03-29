# feathers-index-api

This API is a complement to the Feathers mobile app. It is an index of different bird species and contains information on how to conserve bird populations. 

## Routes
Show all birds in the database:
- http://localhost:8000/bird 

Access a certain species of bird:
- http://localhost:8000/bird/blue_jay

Show all resources:
- http://localhost:8000/resource

Show all threats:
- http://localhost:8000/threat

Show all tips:
- http://localhost:8000/tip

## Models

**Bird** (/bird/:name)

- [x] speciesName
- [x] name
- [x] sageid
- [x] habitat
- [x] plumage
- [x] nest
- [x] diet
- [x] lifespan
- [x] conservationStatus
- [x] funFacts

**Resource** (/resource)

- [x] name
- [x] url

**Threat** (/threat)

- [x] name
- [x] description

**Tip** (/tip)

- [x] name
- [x] description
