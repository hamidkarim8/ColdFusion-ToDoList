<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
      <cfoutput>
        #request.pageTitle# | #request.appTitle#
      </cfoutput>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>  
    <style>
      body {
        background-color: #f5f3ef; /* Neutral base color */
        background-size: cover;
        background-attachment: fixed;
        color: #333;
      }
  
      /* Header banner */
      .header-banner {
        background-color: #5a4b41;
        color: white;
        padding: 30px 0;
        text-align: center;
        border-bottom: 4px solid #e2ceb5; /* Slight golden divider */
      }
      .header-banner h1 {
        margin: 0;
        font-size: 2.5rem;
        font-family: 'Arial', sans-serif;
        letter-spacing: 1.5px;
      }
      .header-banner p {
        font-size: 1.2rem;
        color: #e2ceb5;
      }
  
      /* Form input improvements */
      .form-container {
        margin-top: 40px;
      }
      input[type="text"] {
        padding: 10px;
        width: 60%;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 1.1rem;
      }
      .btn-secondary {
        background-color: #5a4b41;
        color: white;
      }
      .btn-secondary:hover {
        background-color: #483a31;
      }
  
      /* Task cards */
      .card {
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow for cards */
        border-radius: 10px;
        border: none;
        transition: transform 0.3s ease;
      }
      .card:hover {
        transform: translateY(-5px);
      }
      .card-body {
        background-color: #fff4e6; /* Light beige card background */
        padding: 20px;
        border-radius: 10px;
      }
      .card-title {
        font-weight: bold;
        color: #5a4b41;
      }
      .btn-secondary, .btn-danger {
        margin-top: 10px;
        margin-right: 5px;
        padding: 5px 10px;
      }
      .text-center {
        color: #5a4b41;
      }
  
      /* Footer improvements */
      .footer {
        background-color: #5a4b41;
        color: white;
        padding: 20px;
        text-align: center;
        margin-top: 50px;
      }
      .footer p {
        margin: 0;
        font-size: 0.9rem;
      }
    </style>
  </head>
  <div class="header-banner">
    <h1>      
      <cfoutput>
        #request.pageTitle#      
      </cfoutput>
    </h1>
    <p>
      <cfoutput>
        #request.appTitle#
      </cfoutput>
    </p>
  </div>
  <body>
  

<body>
