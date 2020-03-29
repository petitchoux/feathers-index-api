# feathers-index-api

This API is a complement to the Feathers mobile app. It is an index of different bird species and contains information on how to conserve bird populations. 

## GET Routes
Get all birds in the database:
- /bird 

Get one particular species of bird:
- /bird/:id

Get all resources:
- /resource

Get one particular resource only:
- /resource/:id

Get all threats:
- /threat

Get one particular threat only:
- /threat/:id

Get all tips:
- /tip

Get one particular tip only:
- /tip/:id

## Models

**Bird** (/bird)

- [x] id (primary key)
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

- [x] id (primary key)
- [x] name
- [x] url

**Threat** (/threat)

- [x] id (primary key)
- [x] name
- [x] description

**Tip** (/tip)

- [x] id (primary key)
- [x] name
- [x] description
