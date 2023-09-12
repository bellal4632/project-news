<?php
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }
    require "../inc/config.php";

?>
<?php require "inc/head.php"; ?>
</head>

<body>
    <!-- Responsive navbar-->
    <?php require "inc/navbar.php"; ?>


    <!-- Carousel Start -->
    <?php require "inc/carousel.php"; ?>
    <!-- Carousel End -->

    <!-- Page content-->
    <div class="container-fluid">
        <div class="row m-2">
            <!-- Blog entries-->
            <div class="col-lg-9">
                <!-- Featured blog post-->
                <?php require "inc/featured.php"; ?>
                <!-- Blog post-->
                <?php require "inc/blog.php"; ?>
                <!-- // create pagination links -->
                <?php require "inc/pagination.php"; ?>
            </div>
            <!-- Side widgets-->
            <div class="col-lg-3">
                <!-- Search widget-->
                <?php require "inc/search.php"; ?>
                 <!-- Leatest Post widget-->
                 <?php require "inc/leatest.php"; ?>
                <!-- Categories widget-->
                <?php require "inc/category.php"; ?>
                <!-- Log In widget-->
                <?php require "inc/login.php"; ?>
            </div>
        </div>
    </div>
    <!-- Footer-->
    <?php require "inc/footer.php"; ?>
</body>

</html>