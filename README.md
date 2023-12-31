

# Legal Search App
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)  ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) ![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![GraphQL](https://img.shields.io/badge/-GraphQL-E10098?style=for-the-badge&logo=graphql&logoColor=white)    

The Legal Search Platform - a cutting-edge MVP project designed to empower legal professionals with efficient and comprehensive search capabilities for detailed information on legal processes and their corresponding movements. This platform is strategically built on a robust and scalable technology stack to meet the demands of the legal industry.

## Pitch
![Pitch](https://i.ytimg.com/vi/3tj7m7K9fis/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhlIEsoSzAP&rs=AOn4CLBAJQkljK4UQbBK2lJDk7efxaQRiQ)
[Click Here](https://www.youtube.com/watch?v=3tj7m7K9fis&t=3414s)


## Technology Stack

### Backend - Ruby on Rails | API
The backend of the Legal Search Platform is developed using Ruby on Rails, a renowned and reliable web application framework. The database architecture is powered by PostgreSQL, ensuring data integrity and scalability. GraphQL is seamlessly integrated into the backend, providing an efficient and flexible API for seamless communication with the frontend.

### Frontend - React JS
The frontend, crafted with precision, utilizes ReactJS - a powerful JavaScript library that guarantees a dynamic, responsive, and user-friendly interface. This strategic choice ensures an optimal user experience, essential for legal professionals engaging with the platform.

## Key Features
### Comprehensive Search

The Legal Search Platform allows users to input a specific legal process number, offering a detailed and structured display of information related to the process and its associated movements. This functionality serves as the cornerstone for legal professionals conducting in-depth research.

### Robust Technology Foundation

The platform's architecture is built on a robust technology foundation, ensuring scalability, reliability, and efficiency. This MVP project leverages the strengths of Ruby on Rails, PostgreSQL, GraphQL, Docker and ReactJS to deliver a seamless and performant experience.

## How to run this project


 1. git clone --recurse-submodules https://github.com/gillysayres/legal-search
 2. docker-compose build 
 3. docker-compose up 
 4. ~/legal-search/legal_search_rails_api/db/seeds.rb and collect any of
    the pre-generated CNJ numbers in order to test

### Docker compose
```
version: '3.8'
services:
  react_app:
    container_name: legal-search-react-app
    build:
      context: ./legal-search-front
      dockerfile: Dockerfile
    ports:
      - '3001:3001'
    volumes:
      - ./legal-search-front:/app
      - /app/node_modules
    environment:
      - API_URL=http://rails_api:3001

  rails_api:
    container_name: legal-search-rails-api
    build:
      context: ./legal_search_rails_api
      dockerfile: Dockerfile
    ports:
      - '3000:3000'
    volumes:
      - ./legal_search_rails_api:/app
    environment:
      - DATABASE_URL=postgres://postgres:mysecretpassword@db:5432/legal_search_rails_api_development
    depends_on:
      - db

  db:
    container_name: legal-search-db
    image: postgres
    environment:
      POSTGRES_PASSWORD: mysecretpassword
      POSTGRES_DB: legal_search_rails_api_development
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:

```

## Application Rules

[X] It should be possible to search for a legal case using a CNJ Number

[X] It should be possible to view details of the legal case and its movements

[X] It should use graphql

[X] It should be easy to run and maintain

[X] It should have tests for both frontend and backend

## Improvements

[x] "Nenhum resultado encontrado" should only be shown if there was actually a search performed

[x] Frontend layout

[x] 402/403 Page

[x] Asc/Desc order for movements

[x] Tests for React 

## API endpoint
![API Gif](https://res.cloudinary.com/dpqvjewsl/image/upload/v1699974698/czmcus6v8ywxom153aqn.gif)
**POST**

```
http://localhost:3000/graphql
RESPONSE: [{
	"data": {
		"searchLegalCases": [
			{
				"cnjNumber": "8689548-93.1998.1.33.5987",
				"originCourt": "TJPB",
				"partyNames": "Seymour Jakubowski II X Marivel Hahn LLD",
				"startDate": "2023-01-15",
				"movements": [
					{
						"date": "2023-01-20",
						"description": "Error quia iusto. Neque doloribus provident. Sapiente fugiat dolorem. Voluptates quam commodi. Beatae nobis non. Blanditiis molestiae eius. Nesciunt repudiandae ."
					}]}]}}]
```

## Tests
![React tests](https://res.cloudinary.com/dpqvjewsl/image/upload/v1699975608/z2doozuglv1xdnolmao5.png)
![Rails tests](https://res.cloudinary.com/dpqvjewsl/image/upload/v1700221283/cc8jl7dz230po6owlgrk.png)

## Steps of development
The development of the Legal Search Platform took a dual-front approach. The first step was to meticulously constructed the API from scratch, ensuring robustness and efficiency in handling legal data. Simultaneously, the frontend interface of the application was developed to seamlessly consume the data provided by the API. This two-pronged development strategy ensures a cohesive and integrated user experience.

### Backend development steps
- “I was supposed to describe what I did along the week, but today is desperation day and the project 'better to be done than perfect'”
- "Ps.: Sometimes I fix my problems with humor"
![Rambo](https://res.cloudinary.com/dpqvjewsl/image/upload/v1699974771/pdsbunokimn9xmqrczjb.jpg)

### Frotend development steps
- "Refer to what I wrote for the Backend"
