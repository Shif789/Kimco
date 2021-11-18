<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Share99</title>
    <link rel="stylesheet" href="Homepage.css"/>
    <script src="https://use.fontawesome.com/3626be38a6.js"></script>
    <script>
        function stickyMenu(){
            var sticky=document.getElementById ('sticky');
            if(window.pageYOffset > 220) {
                sticky.classList.add('sticky');
        }
        else {
            sticky.classList.remove('sticky');
        }

    }

    window.onscroll = function() {
        stickyMenu();
    }
    </script>
</head>

<body>
    <div class="parrallax">
        <div class="page-title">Share99</div>
    </div>
    <div class="menu" id="sticky">
        <ul class="menu-ul">
            <a href="#" class="a-menu"><li>Home</li></a>
            <a href="#deals" class="a-menu"><li>Deals</li></a>
            <a href="#vegetables" class="a-menu"><li>Vegetables</li></a>
            <a href="#fruits" class="a-menu"><li>Fruits</li></a>
            <a href="#meat" class="a-menu"><li>Meat & Seafood</li></a>
            <a href="#" class="a-menu"><li>Cart</li></a>
        </ul>
        <div class="search-box">
            <form>
                <input type="text" placeholder="Search" name="search" 
                class="search-input">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
    </div>

<!--Homepage Begins-->

     <div class="container">
         <a href="#vegetables">
             <div class="categories">
                 <img src="images/Veg/jalapenos.jpg" class="item-image"/>
                 <div class="image-title">Vegetables</div>
             </div>
         </a>

         
          <a href="#fruits">
                <div class="categories">
                    <img src="images/Fruits/apple.jpg" class="item-image"/>
                    <div class="image-title">Fruits</div>
                </div>
            </a>

          <a href="#meat">
                <div class="categories">
                     <img src="images/Meat/fish.jpg" class="item-image"/>
                    <div class="image-title">Meat & Seafood</div>
                </div>
            </a>

           <a href="#deals">
                <div class="categories">
                        <img src="images/deals.jpg" class="item-image"/>
                        <div class="image-title">Deals</div>
                    </div>
             </a>


     </div>

     <!--Deal Begins Here-->
     <div class="deals-container" id="deals">
         <div class="parrallax">
     <div class="title">DEALS</div>
         </div>
         <div class="deal">
             Save 20% on min-purchase of Rm149 on Vegetables<br/>
             <button class="coupon-btn">Add Coupon</button>
         </div>
         <div class="deal">
            Save 10% on min-purchase of Rm159 on Fruits<br/>
            <button class="coupon-btn">Add Coupon</button>
        </div>
        <div class="deal">
            Save 15% on min-purchase of Rm169 on Meat/Seafood<br/>
            <button class="coupon-btn">Add Coupon</button>
        </div>
     </div>
     <!--Deal Ends Here-->

     <!--Veggie Begins Here-->
     <div class="deals-container" id="vegetables">
        <div class="parrallax">
            <div class="title">VEGETABLES</div>
        </div>
        </div>
    </div>
    <div class="items">
        <div class="images">
            <img src="images/Veg/okra2.jpg" class="item-image-size"/>
        </div>
        <div class="description">
            <b>Organic Okra</b><br/>
            <div class="item-select">
                price : Rm 3.00/250 grams
            </div>
            <label>Qty:</label>
            <select class="item-select">
                <option>250 grams</option>
                <option>500 grams</option>
                <option>750 grams</option>
                <option>1000 grams</option>
               </select><br/>
               <button class="buynow-btn">Buy Now</button>
        </div>
    </div>
    <div class="items">
        <div class="images">
            <img src="images/Veg/chilli.jpg" class="item-image-size"/>
        </div>
        <div class="description">
            <b>Organic Chilli</b><br/>
            <div class="item-select">
                price : Rm 1.00/250 grams
            </div>
            <label>Qty:</label>
            <select class="item-select">
                <option>250 grams</option>
                <option>500 grams</option>
                <option>750 grams</option>
                <option>1000 grams</option>
               </select><br/>
               <button class="buynow-btn">Buy Now</button>
        </div>
    </div> 
    <div class="items">
        <div class="images">
            <img src="images/Veg/tomatoes.jpg" class="item-image-size"/>
        </div>
        <div class="description">
            <b>Organic Tomatoes</b><br/>
            <div class="item-select">
                price : Rm 1.50/250 grams
            </div>
            <label>Qty:</label>
            <select class="item-select">
                <option>250 grams</option>
                <option>500 grams</option>
                <option>750 grams</option>
                <option>1000 grams</option>
               </select><br/>
               <button class="buynow-btn">Buy Now</button>
        </div>
    </div> 
    <div class="items">
        <div class="images">
            <img src="images/Veg/spinach.jpg" class="item-image-size"/>
        </div>
        <div class="description">
            <b>Organic Spinach</b><br/>
            <div class="item-select">
                price : Rm 2.50/250 grams
            </div>
            <label>Qty:</label>
            <select class="item-select">
                <option>250 grams</option>
                <option>500 grams</option>
                <option>750 grams</option>
                <option>1000 grams</option>
               </select><br/>
               <button class="buynow-btn">Buy Now</button>
        </div>
    </div> 
    <div class="items">
        <div class="images">
            <img src="images/Veg/carrots.jpg" class="item-image-size"/>
        </div>
        <div class="description">
            <b>Organic Carrots</b><br/>
            <div class="item-select">
                price : Rm 3.00/250 grams
            </div>
            <label>Qty:</label>
            <select class="item-select">
                <option>250 grams</option>
                <option>500 grams</option>
                <option>750 grams</option>
                <option>1000 grams</option>
               </select><br/>
               <button class="buynow-btn">Buy Now</button>
        </div>
    </div>    
</div>
<!--Veggie Ends Here-->

 <!--Fruits Begins Here-->
 <div class="deals-container" id="fruits">
    <div class="parrallax">
        <div class="title">FRUITS</div>
    </div>
    </div>
</div>
<div class="items">
    <div class="images">
        <img src="images/Fruits/apple2.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Organic Apple</b><br/>
        <div class="item-select">
            price : Rm 3.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div>
<div class="items">
    <div class="images">
        <img src="images/Fruits/grapes.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Organic Grapes</b><br/>
        <div class="item-select">
            price : Rm 1.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Fruits/bananas.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Organic Bananas</b><br/>
        <div class="item-select">
            price : Rm 1.50/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Fruits/oranges.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Organic Oranges</b><br/>
        <div class="item-select">
            price : Rm 2.50/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Fruits/strawberries.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Organic Strawberries</b><br/>
        <div class="item-select">
            price : Rm 3.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div>    
</div>
<!--Fruits Ends Here-->

<!--Meat and Seafood Begins Here-->

<div class="deals-container" id="meat">
    <div class="parrallax">
        <div class="title">Meat & Seafood</div>
    </div>
    </div>
</div>
<div class="items">
    <div class="images">
        <img src="images/Meat/chicken.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Chicken</b><br/>
        <div class="item-select">
            price : Rm 3.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div>
<div class="items">
    <div class="images">
        <img src="images/Meat/beefmeat.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Beef</b><br/>
        <div class="item-select">
            price : Rm 1.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Meat/salmon.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Salmon</b><br/>
        <div class="item-select">
            price : Rm 1.50/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Meat/prawns.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Prawns</b><br/>
        <div class="item-select">
            price : Rm 2.50/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div> 
<div class="items">
    <div class="images">
        <img src="images/Meat/sardines.jpg" class="item-image-size"/>
    </div>
    <div class="description">
        <b>Sardines</b><br/>
        <div class="item-select">
            price : Rm 3.00/250 grams
        </div>
        <label>Qty:</label>
        <select class="item-select">
            <option>250 grams</option>
            <option>500 grams</option>
            <option>750 grams</option>
            <option>1000 grams</option>
           </select><br/>
           <button class="buynow-btn">Buy Now</button>
    </div>
</div>    
</div>

<!--Meat and Seafood Ends Here-->

<!--Homepage Ends Here-->

<!--Footer Begins Here-->

<div class="parallax1">
    <div class="footer">
        <div class="quick-links">
            <div>Locations</div>
            <ul>
                <li><a href="" class="a-links">Address 1</a></li>
                <li><a href="" class="a-links">Address 2</a></li>
                <li><a href="" class="a-links">Address 3</a></li>
            </ul>
        </div>

    <div class="quick-links">
        <div>Careers</div>
        <ul>
            <li><a href="" class="a-links">Packing Staff</a></li>
            <li><a href="" class="a-links">Deslivery Agent</a></li>
            <li><a href="" class="a-links">PLACEHOLDER</a></li>
        </ul>
    </div>

    <div class="quick-links">
        <div>Quick Links</div>
        <ul>
            <li><a href="" class="a-links">Contact Us</a></li>
            <li><a href="" class="a-links">FAQ</a></li>
            <li><a href="" class="a-links">Help</a></li>
        </ul>
    </div>
  </div>
</div>
 
<div class="copyrights">
    <i class="fa fa-copyright"></i>2021 SHARE99
</div>


<!--Footer Ends Here-->



</body>
</html>