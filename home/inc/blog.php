 <div class="row row-cols-1 row-cols-md-3 g-2 mb-2">

     <?php
        // determine current page number
        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        } else {
            $page = 1;
        }

        // set how many cards to display per page
        $cards_per_page = 6;

        // calculate the limit and offset values for the SQL query
        $limit = $cards_per_page;
        $offset = ($page - 1) * $cards_per_page;

        // For Articles Details
        $q = "select * from articles where active='3' ORDER BY created_at desc LIMIT $limit OFFSET $offset";
        $r = $conn->query($q);

        // for date
        $query1 = "SELECT DATE_FORMAT(created_at, '%d %M %Y') AS date_only FROM articles;";
        $result1 = mysqli_query($conn, $query1);
        $row1 = mysqli_fetch_assoc($result1);

        ?>



     <?php
        while ($row = $r->fetch_assoc()) {
        ?>


         <div class="col">
             <div class="card h-100 mb-4">
                 <img height="200px" src="../admin/a.assets/article_image/<?php echo $row["images"]; ?>" class="card-img-top" alt="<?php echo $row["title"]; ?>">
                 <div style="font-size: 13px; text-align: justify; display: flex; align-items: start;" class="card-header"><b>
                         <a class="link-dark" style="text-decoration:none" href="details.php?id=<?= $row['id'] ?>"> <?php echo implode(' ', array_slice(explode(' ', $row['title']), 0, 9)); ?> </a></b>
                 </div>
                 <div class="card-body">
                     <small>
                         <p style="text-align: justify; display: flex; align-items: start;" class="card-text"><?php echo implode(' ', array_slice(explode(' ', $row['description']), 0, 35)); ?>...
                         </p>
                     </small>
                 </div>
                 <div class="card-footer ">
                     <small class="text-muted">
                         <p class="mt-2" style="float: left; display: flex; align-items: center;">
                             <b><?php echo $row1["date_only"]; ?></b>
                         </p>
                         <a style="float: right; display: flex; align-items: center;" class="btn btn-primary" href="details.php?id=<?= $row['id'] ?>">Read more →</a>
                     </small>
                 </div>
             </div>
         </div>
     <?php
        }
        ?>
 </div>