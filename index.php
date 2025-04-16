<!DOCTYPE html>
<html>

<?php
include "page-components/head.php"
?>
<body>
    <header class="main-header">
        <a href="index.php">
            <img class="logo" src="images/PGHlogo.png">
        </a>
        <button type="button" class="menu-button">
            <i class="fa-solid fa-bars"></i>
        </button>
        <form id="search">
            <input type="search" name="search" placeholder="type your search">
            <button type="submit" name="search-button">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <nav class="main-navigation">
            <a href="index.php">
                <!-- <i class="fa-solid fa-house"></i> -->
                Home
            </a>
            <a href="products.html">Products</a>
            <a href="about.php">About</a>
            <a href="contact.php">Contact</a>
        </nav>
    </header>
    <main>
        <section class="featured">
            <h2>Featured Categories</h2>
            <div class="categories">
                <div class="card">
                    <img class="card-image" alt="a pair of shoes" src="images/branislav-belko-lJ7iAZxplpc-unsplash.jpg">
                    <div class="card-content">
                        <h4>Shoes</h4>
                        <p class="description">Sports shoes</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
                <div class="card">
                    <img class="card-image" alt="a tennis racquet and a ball"
                        src="images/hoi-pham-eLZwsPO8cCQ-unsplash.jpg">
                    <div class="card-content">
                        <h4>Tennis</h4>
                        <p class="description">Tennis gear</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
                <div class="card">
                    <img class="card-image" src="images/ruslan-ruslan-AhAMJgq5QPM-unsplash.jpg">
                    <div class="card-content">
                        <h4>Basketball</h4>
                        <p class="description">Basketball gear</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
                <div class="card">
                    <img class="card-image" src="images/ruslan-ruslan-AhAMJgq5QPM-unsplash.jpg">
                    <div class="card-content">
                        <h4>Basketball</h4>
                        <p class="description">Basketball gear</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
                <div class="card">
                    <img class="card-image" src="images/ruslan-ruslan-AhAMJgq5QPM-unsplash.jpg">
                    <div class="card-content">
                        <h4>Basketball</h4>
                        <p class="description">Basketball gear</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
                <div class="card">
                    <img class="card-image" src="images/ruslan-ruslan-AhAMJgq5QPM-unsplash.jpg">
                    <div class="card-content">
                        <h4>Basketball</h4>
                        <p class="description">Basketball gear</p>
                        <a href="#" class="card-button">Shop</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer class="main-footer">
        <nav class="social">
            <a href="https://facebook.com">
                <i class="fa-brands fa-facebook"></i>
            </a>
            <a href="https://instagram.com">
                <i class="fa-brands fa-square-instagram"></i>
            </a>
            <a href="https://tiktok.com">
                <i class="fa-brands fa-tiktok"></i>
            </a>
        </nav>
        <p class="copyright">&copy; Pro Grear Hub 2025. All rights reserved.</p>
    </footer>
</body>
<template id="product-card">
    <div class="card">
        <img class="product-image" src="">
        <div class="card=content">
            <h3 class="card-title"></h3>
            <p class="card-description"></p>
            <a href="" class="card-button"></a>
        </div>
    </div>
</template>
</html>