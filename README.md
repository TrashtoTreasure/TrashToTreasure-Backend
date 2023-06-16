
# Trash To Treasure Backend

[![Logo-1.png](https://i.postimg.cc/J4F84jSt/Logo-1.png)](https://postimg.cc/SJc3gYSp)

This is a repository for Trash To Treasure Articles and Feedback API


## Authors

- [Firmansyah Wicaksono - c220dsx2706 - CC43 Bangkit 2023](https://www.github.com/firmansyw30)
- [Fildzah Syarafina Al Haris - c208dky4089 - CC26 Bangkit 2023]()

## Installation / Requirement

Make sure you have installed node.js and npm, check your node.js and npm using cmd using 

```bash
  node -v
  npm -v
```

if you don't have node.js, please click this link to download latest version of [node.js](https://nodejs.org/en/download) and for npm is automatically installed after node.js installed
## Run Locally

Clone the project in your code editor

```bash
  git clone -b api-2 https://github.com/TrashtoTreasure/TrashToTreasure-Backend.git
```

Go to the project directory (this is example directory, and maybe different)

```bash
  cd api-2
```

Install dependencies

```bash
  npm install
```

Because in this source code using SQL database for retrieving and insert a feedback, make sure you create the database first in [localhost](http://localhost/phpmyadmin/)

- Import the database file to your actual database name

- Replace the connection.js file based on connection information on phpmyadmin

After replaced, you can run the code in your directories using this syntax on your terminal
```bash
  npm run start
```

## Cloud Architecture

We use additional services like "Firebase" for creating a secure authentication and based on the complexity of configuring the authentication. The authentication is configured by Mobile Development Division.

[![cloud-architecture-product-capstone-project-bangkit-2023-Fix-yang-ini.png](https://i.postimg.cc/fRsGb5Bz/cloud-architecture-product-capstone-project-bangkit-2023-Fix-yang-ini.png)](https://postimg.cc/bs6CCx7W)


## Deployment

To deploy this express.js app to google cloud app engine, please follow this step

- <b>(Required) </b> Create an SQL instance first and confgure wisely for hosting exported sql database file
- After created, make sure the cloud sql is accessible to public by assign public IP by Click the Cloud SQL Instances Name -> Connections -> Networking -> Checklist the Public IP and add a network 0.0.0.0/0
- Upload or clone the code you want to deploy to cloud shell editor
- Modify the "connection.js" based on actual configuration and following the comment in the code
- Change your working directory to your actual directory of the code
```bash
  cd [your-working-directory-of-the-code]
```
- Create a file called 'app.yaml' in the root directory and write a syntax like this
```bash
  runtime: nodejs18
```
- For deploy, in the terminal type this syntax
```bash
  gcloud app deploy
```
(reminder) before you deploy, you have to configure your region app engine and neccessary first in google cloud dashboard, that also our mistake in deployment
## Documentation

Click at this link for the API [Documentation](https://documenter.getpostman.com/view/27978723/2s93sf3WfS)


## Tech Stack

**Client:** Visual Studio Code, Cloud Shell Editor, Postman, Express.js, phpmyadmin

**Server:** Node.js


## Lessons Learned

Because this is our first time created an backend using express.js, managing team too. So this is a great and challenging story for us specially in capstone project at Bangkit 2023


## Feedback

If you have any feedback or critism, please reach us out to firmansyahwicaksono30@gmail.com, fildzahsyarafinaah@gmail.com

Student ID : 
- c220dsx2706@bangkit.academy - Firmansyah Wicaksono - CC 43
- c208dky4089@bangkit.academy - Fildzah Syarafina Al Haris - CC 26
