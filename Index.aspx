<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SignalRChat.Index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChatBot</title>
    <link rel="stylesheet" href="Content/index.css">
    <!-- Google Fonts Links For Icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0">
    <meta name="description" content="Website, Responsive Website, HTML Website, CSS Website, Website HTML and CSS, SignalR, SIgnalR chat application">
    <meta name="keywords" content="Private Chat Room using asp.net web forms">
    <script src="Scripts/custom-scripts.js" defer></script>
  </head>
  <body>
    <header>
      <nav class="navbar">
        <a class="logo" href="#">Connect<span>.</span></a>
        <ul class="menu-links">
          <span id="close-menu-btn" class="material-symbols-outlined">close</span>         
          <li><a href="#">About us</a></li>
          <li><a href="#">Contact us</a></li>
        </ul>
        <span id="hamburger-btn" class="material-symbols-outlined">menu</span>
      </nav>
    </header>

    <section class="hero-section">
      <div class="content">
        <h2>Chat, Share, Repeat.</h2>
        <p id="para">
          Where Conversations Come to Life.
        </p><br /><br />
        <a class="button" href="Login.aspx">Join Us</a>
      </div>
    </section>

    <script>
      const header = document.querySelector("header");
      const hamburgerBtn = document.querySelector("#hamburger-btn");
      const closeMenuBtn = document.querySelector("#close-menu-btn");

      // Toggle mobile menu on hamburger button click
      hamburgerBtn.addEventListener("click", () => header.classList.toggle("show-mobile-menu"));

      // Close mobile menu on close button click
        closeMenuBtn.addEventListener("click", () => hamburgerBtn.click());

        //para change function
        const titles = ["Your Chat, Your Way.", "Unlocking the Power of Connection.", "Discover the Magic of Messaging.", "Where Conversations Come to Life."];
        let currentIndex = 0;

        function updateTitle() {          
            const titleElement = document.getElementById("para");
            titleElement.textContent = titles[currentIndex];
            currentIndex = (currentIndex + 1) % titles.length;
        }
        setInterval(updateTitle, 3000);
    </script>
    
  </body>
</html>

