<div id="footer"><!-- #footer Begin -->
    <div class="container"><!-- container Begin -->
        <div class="row"><!-- row Begin -->
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
               
               <h4>Dịch Vụ</h4>
                
                <ul><!-- ul Begin -->
                    <li><a href="cart.php">Giỏ Hàng</a></li>
                    <li><a href="contact.php">Liên Hệ</a></li>
                    <li><a href="shop.php">Sản Phẩm</a></li>
                    <li><a href="customer/my_account.php">Tài Khoản</a></li>
                </ul><!-- ul Finish -->
                
                <hr>
                
                <h4>Khách Hàng</h4>
                
                <ul><!-- ul Begin -->
                           
                           <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='checkout.php'>Đăng Nhập</a>";
                               
                           }else{
                               
                              echo"<a href='customer/my_account.php?my_orders'>Tài Khoản</a>"; 
                               
                           }
                           
                           ?>
                    
                    <li><a href="customer_register.php">Đăng Ký</a></li>
                </ul><!-- ul Finish -->
                
                <hr class="hidden-md hidden-lg hidden-sm">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="com-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Sản Phẩm Nổi Bật</h4>
                
                <ul><!-- ul Begin -->
                
                    <?php 
                    
                        $get_p_cats = "select * from product_categories";
                    
                        $run_p_cats = mysqli_query($con,$get_p_cats);
                    
                        while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                            
                            $p_cat_id = $row_p_cats['p_cat_id'];
                            
                            $p_cat_title = $row_p_cats['p_cat_title'];
                            
                            echo "
                            
                                <li>
                                
                                    <a href='shop.php?p_cat=$p_cat_id'>
                                    
                                        $p_cat_title
                                    
                                    </a>
                                
                                </li>
                            
                            ";
                            
                        }
                    
                    ?>
                
                </ul><!-- ul Finish -->
                
                <hr class="hidden-md hidden-lg">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Liên Hệ</h4>
                
                <p><!-- p Start -->
                    
                    <strong> UIt Store.</strong>
                    <br/>12, Lê Vĩnh Huy, Củ Chi
                    <br/>TPHCM
                    <br/>0968554800
                    <br/>lethong291@gmail.com
                    <br/><strong>Thông</strong>
                    
                </p><!-- p Finish -->
                
                <a href="contact.php">CSKH</a>
                
                <hr class="hidden-md hidden-lg">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3">
                
                <h4>Tin Tức</h4>
                
                <p class="text-muted">
                    Đừng bỏ lỡ những sản phẩm mới nhất.
                </p>
                
                <form action="https://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('https://feedburner.google.com/fb/a/mailverify?uri=M-devMedia', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true" method="post"><!-- form begin -->
                    <div class="input-group"><!-- input-group begin -->
                        
                        <input type="text" class="form-control" name="email">
                        
                        <input type="hidden" value="M-devMedia" name="uri"/><input type="hidden" name="loc" value="en_US"/>
                        
                        <span class="input-group-btn"><!-- input-group-btn begin -->
                            
                            <input type="submit" value="subscribe" class="btn btn-default">
                            
                        </span><!-- input-group-btn Finish -->
                        
                    </div><!-- input-group Finish -->
                </form><!-- form Finish -->
                
                <hr>
                
                <h4>Mạng Xã Hội</h4>
                
                <p class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-google-plus"></a>
                    <a href="#" class="fa fa-envelope"></a>
                </p>
                
            </div>
        </div><!-- row Finish -->
    </div><!-- container Finish -->
</div><!-- #footer Finish -->


<div id="copyright"><!-- #copyright Begin -->
    <div class="container"><!-- container Begin -->
        <div class="col-md-6"><!-- col-md-6 Begin -->
            
            <p class="pull-left">&copy; 2019</p>
            
        </div><!-- col-md-6 Finish -->
        
    </div><!-- container Finish -->
</div><!-- #copyright Finish -->