<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="NexusShop — a cleaner, friendlier modern shopping experience">
<title>NexusShop — Shop smarter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
:root{
  --bg:#f7f7f4;--surface:#fff;--soft:#f0f1ec;--ink:#17191c;--muted:#697078;
  --accent:#ef7658;--accent-dark:#d95c3d;--line:#e7e7e2;--success:#198754;
  --shadow:0 12px 35px rgba(20,24,28,.07);--radius:20px;--max:1180px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:"DM Sans",system-ui,sans-serif;background:var(--bg);color:var(--ink);line-height:1.5}
button,input{font:inherit}button{border:0;cursor:pointer}a{text-decoration:none;color:inherit}
.container{max-width:var(--max);margin:auto;padding:0 20px}
.skip{position:absolute;left:-9999px}.skip:focus{left:15px;top:15px;background:#fff;padding:10px;z-index:999}
.topbar{background:var(--ink);color:#fff;text-align:center;font-size:13px;padding:8px}
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);backdrop-filter:blur(16px);border-bottom:1px solid var(--line)}
.nav{height:72px;display:flex;align-items:center;gap:24px}
.logo{display:flex;align-items:center;gap:9px;font-weight:700;font-size:22px;letter-spacing:-.5px;white-space:nowrap}
.logo i{color:var(--accent);font-size:24px}.logo span span{color:var(--accent)}
.main-nav{display:flex;gap:4px;flex:1}.main-nav a{padding:9px 12px;border-radius:10px;color:var(--muted);font-size:14px;font-weight:600}.main-nav a:hover,.main-nav a.active{background:var(--soft);color:var(--ink)}
.search{display:flex;align-items:center;background:var(--soft);border:1px solid transparent;border-radius:12px;padding:0 12px;width:230px}.search:focus-within{background:#fff;border-color:var(--accent)}.search input{width:100%;border:0;outline:0;background:transparent;padding:10px 7px;font-size:14px}.search button{background:none;color:var(--muted)}
.actions{display:flex;align-items:center;gap:5px}.icon{position:relative;width:40px;height:40px;border-radius:12px;background:transparent;color:var(--muted)}.icon:hover{background:var(--soft);color:var(--ink)}
.count{position:absolute;right:1px;top:0;min-width:18px;height:18px;padding:0 5px;border-radius:99px;background:var(--accent);color:#fff;font-size:10px;font-weight:700;display:grid;place-items:center;border:2px solid #fff}
.menu-btn{display:none}
.hero{margin:22px 0 0;border-radius:28px;overflow:hidden;min-height:500px;display:flex;align-items:center;position:relative;background:#252733 url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85") center/cover}
.hero:after{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(18,20,28,.88),rgba(18,20,28,.35) 65%,rgba(18,20,28,.15))}
.hero-content{position:relative;z-index:1;padding:70px;max-width:680px;color:#fff}.eyebrow{display:inline-flex;gap:8px;align-items:center;color:#ffd2c7;background:rgba(239,118,88,.18);border:1px solid rgba(255,255,255,.12);padding:7px 13px;border-radius:99px;font-size:12px;font-weight:700;margin-bottom:18px}
h1{font-family:"Playfair Display",serif;font-size:clamp(42px,6vw,68px);line-height:1.02;letter-spacing:-1.5px;margin-bottom:18px} .hero p{font-size:17px;color:rgba(255,255,255,.8);max-width:530px;margin-bottom:28px}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;border-radius:12px;padding:12px 18px;font-weight:700;transition:.2s}.btn-primary{background:var(--accent);color:#fff}.btn-primary:hover{background:var(--accent-dark);transform:translateY(-1px)}.btn-light{background:#fff;color:var(--ink)}.btn-light:hover{background:#f4f4f1}
.trust{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:18px 0 0}.trust-card{background:#fff;border:1px solid var(--line);border-radius:15px;padding:15px;display:flex;gap:11px;align-items:center}.trust-card i{color:var(--accent);font-size:18px}.trust-card b{display:block;font-size:13px}.trust-card span{font-size:11px;color:var(--muted)}
.section{padding:58px 0}.section-head{display:flex;justify-content:space-between;align-items:end;margin-bottom:25px;gap:20px}.section-head h2{font-size:28px;letter-spacing:-.7px}.section-head p{color:var(--muted);font-size:14px;margin-top:3px}.link{color:var(--accent-dark);font-weight:700;font-size:14px}
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}.cat{background:#fff;border:1px solid var(--line);border-radius:16px;padding:20px 10px;text-align:center;cursor:pointer;transition:.2s}.cat:hover,.cat.selected{border-color:#f1b3a4;box-shadow:var(--shadow);transform:translateY(-3px)}.cat-icon{width:48px;height:48px;margin:auto auto 10px;border-radius:14px;background:#fff0ec;color:var(--accent);display:grid;place-items:center;font-size:19px}.cat b{font-size:13px}.cat small{display:block;color:var(--muted);font-size:11px;margin-top:2px}
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:18px}.chips{display:flex;gap:7px;flex-wrap:wrap}.chip{background:#fff;border:1px solid var(--line);border-radius:99px;padding:8px 13px;font-size:12px;font-weight:600;color:var(--muted)}.chip.active,.chip:hover{background:var(--ink);border-color:var(--ink);color:#fff}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:16px}.card{background:#fff;border:1px solid var(--line);border-radius:18px;overflow:hidden;transition:.2s;display:flex;flex-direction:column}.card:hover{transform:translateY(-4px);box-shadow:var(--shadow)}.product-img{position:relative;aspect-ratio:1/1;background:var(--soft);overflow:hidden}.product-img img{width:100%;height:100%;object-fit:cover;transition:.35s}.card:hover .product-img img{transform:scale(1.04)}.badge{position:absolute;left:11px;top:11px;background:#fff;padding:5px 9px;border-radius:99px;font-size:10px;font-weight:800}.badge.sale{background:#ffe3a7}.wish{position:absolute;right:10px;top:10px;width:34px;height:34px;border-radius:10px;background:rgba(255,255,255,.92);color:var(--muted)}.wish.active{color:var(--accent)}.product-body{padding:15px 15px 8px;flex:1}.category{font-size:10px;text-transform:uppercase;letter-spacing:.7px;color:#92979b;font-weight:700}.product-body h3{font-size:14px;margin:5px 0 8px;line-height:1.3}.price{font-weight:800;font-size:17px}.old{color:#9ca0a3;text-decoration:line-through;font-size:12px;margin-left:6px}.rating{font-size:11px;color:#e9a72d;margin-top:6px}.rating span{color:var(--muted)}.card-footer{padding:8px 15px 15px}.add{width:100%;background:var(--ink);color:#fff;border-radius:11px;padding:10px;font-size:12px;font-weight:700}.add:hover{background:var(--accent)}.add.added{background:var(--success)}
.deal{display:grid;grid-template-columns:1.05fr 1fr;background:#fff;border:1px solid var(--line);border-radius:22px;overflow:hidden;box-shadow:var(--shadow)}.deal-img{min-height:340px}.deal-img img{width:100%;height:100%;object-fit:cover}.deal-content{padding:45px;display:flex;justify-content:center;flex-direction:column}.deal-tag{color:var(--accent-dark);font-weight:800;font-size:11px;text-transform:uppercase;letter-spacing:.8px}.deal h2{font-size:34px;margin:8px 0}.deal p{color:var(--muted);font-size:14px;max-width:460px}.deal-price{font-size:29px;font-weight:800;margin:18px 0 3px}.deal-price del{font-size:15px;color:#999;font-weight:500;margin-left:7px}.stock{font-size:12px!important;margin-bottom:15px}.timer{display:flex;gap:8px;margin:8px 0 22px}.timer div{background:var(--ink);color:#fff;border-radius:11px;padding:9px 12px;min-width:58px;text-align:center}.timer b{font-size:18px;display:block}.timer small{font-size:9px;color:#bbb;text-transform:uppercase}
.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}.review{background:#fff;border:1px solid var(--line);border-radius:17px;padding:22px}.stars{color:#e9a72d;font-size:14px;letter-spacing:2px}.review p{font-size:14px;margin:11px 0 17px}.person{display:flex;align-items:center;gap:10px}.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}.person b{font-size:12px}.person small{display:block;color:var(--muted);font-size:10px}
.news{background:var(--ink);color:#fff;border-radius:22px;padding:38px;display:flex;justify-content:space-between;align-items:center;gap:25px}.news h2{font-size:25px}.news p{color:#aeb2b6;font-size:13px;margin-top:4px}.news form{display:flex;gap:8px;max-width:440px;width:100%}.news input{flex:1;border:1px solid #454950;background:#303238;color:#fff;border-radius:11px;padding:12px 14px;outline:none}.news input:focus{border-color:var(--accent)}.news button{white-space:nowrap}
footer{padding:42px 0 25px;border-top:1px solid var(--line)}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px}.footer-grid h4{font-size:13px;margin-bottom:10px}.footer-grid a,.footer-grid p{display:block;color:var(--muted);font-size:12px;margin:6px 0}.social{display:flex;gap:7px;margin-top:13px}.social a{width:34px;height:34px;background:#fff;border:1px solid var(--line);border-radius:9px;display:grid;place-items:center}.copyright{border-top:1px solid var(--line);margin-top:28px;padding-top:18px;color:#999;font-size:11px}
.drawer-backdrop{position:fixed;inset:0;background:rgba(0,0,0,.38);z-index:80;opacity:0;pointer-events:none;transition:.2s}.drawer-backdrop.open{opacity:1;pointer-events:auto}.drawer{position:fixed;right:0;top:0;height:100%;width:min(420px,92vw);background:#fff;z-index:90;transform:translateX(100%);transition:.25s;padding:22px;box-shadow:-15px 0 45px rgba(0,0,0,.15);overflow:auto}.drawer.open{transform:translateX(0)}.drawer-head{display:flex;justify-content:space-between;align-items:center;margin-bottom:22px}.drawer h2{font-size:22px}.close{width:38px;height:38px;border-radius:10px;background:var(--soft)}.cart-empty{text-align:center;color:var(--muted);padding:60px 20px}.cart-empty i{font-size:40px;margin-bottom:12px;color:#c8cbcc}.cart-item{display:flex;gap:12px;padding:12px 0;border-bottom:1px solid var(--line)}.cart-item img{width:68px;height:68px;object-fit:cover;border-radius:10px}.cart-item h4{font-size:13px}.cart-item p{font-size:12px;color:var(--muted)}.cart-total{display:flex;justify-content:space-between;font-weight:800;font-size:18px;margin:20px 0}
.toast{position:fixed;left:50%;bottom:22px;transform:translate(-50%,20px);background:var(--ink);color:#fff;padding:11px 16px;border-radius:11px;font-size:12px;opacity:0;pointer-events:none;transition:.25s;z-index:120}.toast.show{opacity:1;transform:translate(-50%,0)}
@media(max-width:1000px){.main-nav{display:none}.menu-btn{display:block}.search{flex:1;max-width:270px}.categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}}
@media(max-width:760px){.nav{gap:8px}.logo{font-size:19px}.search{max-width:none}.actions .icon:nth-child(1){display:none}.hero{min-height:440px}.hero-content{padding:35px 25px}.trust{grid-template-columns:repeat(2,1fr)}.products{grid-template-columns:repeat(2,1fr);gap:10px}.deal{grid-template-columns:1fr}.deal-img{min-height:220px}.deal-content{padding:28px}.reviews{grid-template-columns:1fr}.news{display:block;padding:28px}.news form{margin-top:18px}.footer-grid{grid-template-columns:1fr 1fr}.section{padding:42px 0}}
@media(max-width:480px){.topbar{font-size:11px}.search{display:none}.menu-btn{order:-1}.hero{margin-top:12px;border-radius:20px}.hero h1{font-size:40px}.trust-card{padding:12px 9px}.categories{grid-template-columns:repeat(2,1fr)}.section-head h2{font-size:23px}.toolbar{align-items:flex-start;flex-direction:column}.deal h2{font-size:28px}.timer div{min-width:51px;padding:8px 8px}.news form{display:block}.news input,.news button{width:100%}.news button{margin-top:8px}}
</style>
</head>
<body>
<a class="skip" href="#products">Skip to products</a>
<div class="topbar">Free shipping on orders over $50 · Easy 30-day returns</div>

<header>
  <div class="container nav">
    <button class="icon menu-btn" id="menuBtn" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a class="logo" href="#" aria-label="NexusShop home"><i class="fa-solid fa-bag-shopping"></i><span>Nexus<span>Shop</span></span></a>
    <nav class="main-nav" id="desktopNav">
      <a class="active" href="#">Home</a><a href="#categories">Categories</a><a href="#products">Shop</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
    </nav>
    <div class="search"><input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products"><button id="searchBtn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button></div>
    <div class="actions">
      <button class="icon" id="wishlistBtn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      <button class="icon" id="cartBtn" aria-label="Shopping cart"><i class="fa-solid fa-bag-shopping"></i><span class="count" id="cartCount">0</span></button>
    </div>
  </div>
  <nav class="container" id="mobileNav" style="display:none;padding-bottom:12px">
    <div style="display:grid;gap:4px"><a href="#" class="chip">Home</a><a href="#categories" class="chip">Categories</a><a href="#products" class="chip">Shop</a><a href="#deals" class="chip">Deals</a><a href="#reviews" class="chip">Reviews</a></div>
  </nav>
</header>

<main>
  <section class="container hero">
    <div class="hero-content">
      <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New arrivals are here</span>
      <h1>Good products.<br>Simple choices.</h1>
      <p>Discover everyday essentials, useful tech and things worth keeping — all in one calm, easy-to-shop place.</p>
      <div style="display:flex;gap:10px;flex-wrap:wrap"><a class="btn btn-primary" href="#products">Start shopping <i class="fa-solid fa-arrow-right"></i></a><a class="btn btn-light" href="#deals">See today's deal</a></div>
    </div>
  </section>

  <div class="container trust">
    <div class="trust-card"><i class="fa-solid fa-truck-fast"></i><div><b>Fast delivery</b><span>Reliable shipping</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-rotate-left"></i><div><b>30-day returns</b><span>No awkward process</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-shield-halved"></i><div><b>Secure checkout</b><span>Your details stay protected</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-headset"></i><div><b>Human support</b><span>We're here to help</span></div></div>
  </div>

  <section class="section container" id="categories">
    <div class="section-head"><div><h2>Shop by category</h2><p>Start with what you need.</p></div><a class="link" href="#products">View all →</a></div>
    <div class="categories" id="categoriesGrid"></div>
  </section>

  <section class="section container" id="products">
    <div class="section-head"><div><h2>Popular right now</h2><p>Customer favourites, without the clutter.</p></div></div>
    <div class="toolbar"><div class="chips" id="chips"></div><span id="resultCount" style="font-size:12px;color:var(--muted)"></span></div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section class="section container" id="deals">
    <div class="section-head"><div><h2>Today's deal</h2><p>A useful upgrade at a better price.</p></div></div>
    <div class="deal">
      <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="Laptop on a desk"></div>
      <div class="deal-content">
        <span class="deal-tag">Limited-time offer</span><h2>MacBook Air M2</h2>
        <p>Thin, capable and easy to carry. A dependable everyday laptop for work, study and creative projects.</p>
        <div class="deal-price">$999 <del>$1,199</del></div><p class="stock"><strong>Only 12 left</strong> at this price.</p>
        <div class="timer" aria-label="Deal countdown"><div><b id="d">1</b><small>days</small></div><div><b id="h">00</b><small>hours</small></div><div><b id="m">00</b><small>mins</small></div><div><b id="s">00</b><small>secs</small></div></div>
        <button class="btn btn-primary" id="dealBtn"><i class="fa-solid fa-bag-shopping"></i> Add deal to cart</button>
      </div>
    </div>
  </section>

  <section class="section container" id="reviews">
    <div class="section-head"><div><h2>People are saying</h2><p>Short, honest feedback from shoppers.</p></div></div>
    <div class="reviews">
      <article class="review"><div class="stars">★★★★★</div><p>“Fast shipping, simple checkout and the product was exactly as described.”</p><div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt=""><div><b>Ava Martin</b><small>Verified buyer</small></div></div></article>
      <article class="review"><div class="stars">★★★★☆</div><p>“I like that I can find what I need without fighting through a million banners.”</p><div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80" alt=""><div><b>James Wilson</b><small>Frequent shopper</small></div></div></article>
      <article class="review"><div class="stars">★★★★★</div><p>“Great quality and the support team actually answered my question quickly.”</p><div class="person"><img class="avatar" src="https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt=""><div><b>Sophia Chen</b><small>Verified buyer</small></div></div></article>
    </div>
  </section>

  <section class="section container">
    <div class="news"><div><h2>Get the good stuff first.</h2><p>New arrivals and worthwhile offers. No spam.</p></div><form id="newsletter"><input id="email" type="email" placeholder="Your email address" aria-label="Email address" required><button class="btn btn-primary">Subscribe</button></form></div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div><a class="logo" href="#"><i class="fa-solid fa-bag-shopping"></i><span>Nexus<span>Shop</span></span></a><p>Modern shopping, designed to feel straightforward.</p><div class="social"><a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a><a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a><a href="#" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a></div></div>
    <div><h4>Shop</h4><a href="#categories">Categories</a><a href="#products">Popular</a><a href="#deals">Deals</a></div>
    <div><h4>Help</h4><a href="#">Shipping</a><a href="#">Returns</a><a href="#">Contact</a></div>
    <div><h4>Company</h4><a href="#">About</a><a href="#">Privacy</a><a href="#">Terms</a></div>
  </div>
  <div class="container copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="drawer-backdrop" id="backdrop"></div>
<aside class="drawer" id="cartDrawer" aria-label="Shopping cart">
  <div class="drawer-head"><h2>Your cart</h2><button class="close" id="closeCart" aria-label="Close cart"><i class="fa-solid fa-xmark"></i></button></div>
  <div id="cartItems"></div><div id="cartSummary"></div>
</aside>
<div class="toast" id="toast" role="status"></div>

<script>
const CATEGORIES=[
 {id:"all",name:"All products",icon:"fa-grid-2",count:8},
 {id:"phones",name:"Smartphones",icon:"fa-mobile-screen",count:24},
 {id:"laptops",name:"Laptops",icon:"fa-laptop",count:18},
 {id:"clothing",name:"Clothing",icon:"fa-shirt",count:42},
 {id:"gadgets",name:"Gadgets",icon:"fa-headphones",count:31},
 {id:"footwear",name:"Footwear",icon:"fa-shoe-prints",count:27}
];
const PRODUCTS=[
{id:1,title:"iPhone 14 Pro Max",price:1099,old:1199,rating:5,reviews:128,badge:"New",category:"Smartphones",cat:"phones",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:"",category:"Laptops",cat:"laptops",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"},
{id:3,title:"Apple Watch Series 8",price:349,old:399,rating:5,reviews:214,badge:"Sale",category:"Gadgets",cat:"gadgets",img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"},
{id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,badge:"",category:"Footwear",cat:"footwear",img:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85"},
{id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,badge:"New",category:"Gadgets",cat:"gadgets",img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"},
{id:6,title:"Everyday Travel Backpack",price:79,old:99,rating:4,reviews:67,badge:"Sale",category:"Clothing",cat:"clothing",img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"},
{id:7,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,badge:"",category:"Gadgets",cat:"gadgets",img:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85"},
{id:8,title:"Classic Everyday Tee",price:35,old:45,rating:5,reviews:92,badge:"Sale",category:"Clothing",cat:"clothing",img:"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=85"}
];
let activeCat="all",query="",cart=[],wishlist=new Set();
const $=id=>document.getElementById(id);
function money(n){return "$"+n.toLocaleString()}
function renderCategories(){
 $("categoriesGrid").innerHTML=CATEGORIES.filter(c=>c.id!=="all").map(c=>`<button class="cat ${activeCat===c.id?"selected":""}" data-cat="${c.id}"><div class="cat-icon"><i class="fa-solid ${c.icon}"></i></div><b>${c.name}</b><small>${c.count} items</small></button>`).join("");
 document.querySelectorAll(".cat").forEach(x=>x.onclick=()=>{activeCat=x.dataset.cat;query="";$("searchInput").value="";renderAll();$("products").scrollIntoView({behavior:"smooth"})});
}
function renderChips(){
 $("chips").innerHTML=CATEGORIES.map(c=>`<button class="chip ${activeCat===c.id?"active":""}" data-chip="${c.id}">${c.name}</button>`).join("");
 document.querySelectorAll("[data-chip]").forEach(x=>x.onclick=()=>{activeCat=x.dataset.chip;renderAll()});
}
function filtered(){
 return PRODUCTS.filter(p=>(activeCat==="all"||p.cat===activeCat)&&(!query||p.title.toLowerCase().includes(query)||p.category.toLowerCase().includes(query)));
}
function renderProducts(){
 const list=filtered();$("resultCount").textContent=`${list.length} product${list.length!==1?"s":""}`;
 $("productsGrid").innerHTML=list.length?list.map(p=>`<article class="card">
  <div class="product-img"><img src="${p.img}" alt="${p.title}" loading="lazy">${p.badge?`<span class="badge ${p.badge==="Sale"?"sale":""}">${p.badge}</span>`:""}<button class="wish ${wishlist.has(p.id)?"active":""}" data-wish="${p.id}" aria-label="Wishlist ${p.title}"><i class="${wishlist.has(p.id)?"fa-solid":"fa-regular"} fa-heart"></i></button></div>
  <div class="product-body"><div class="category">${p.category}</div><h3>${p.title}</h3><div><span class="price">${money(p.price)}</span>${p.old?`<span class="old">${money(p.old)}</span>`:""}</div><div class="rating">★★★★★ <span>(${p.reviews})</span></div></div>
  <div class="card-footer"><button class="add" data-add="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button></div>
 </article>`).join(""):`<div style="grid-column:1/-1;text-align:center;padding:50px;color:var(--muted)">No products match that search. Try a broader term.</div>`;
 document.querySelectorAll("[data-add]").forEach(b=>b.onclick=()=>addToCart(+b.dataset.add,b));
 document.querySelectorAll("[data-wish]").forEach(b=>b.onclick=()=>{const id=+b.dataset.wish;wishlist.has(id)?wishlist.delete(id):wishlist.add(id);renderProducts();toast(wishlist.has(id)?"Added to wishlist":"Removed from wishlist")});
}
function renderAll(){renderCategories();renderChips();renderProducts()}
function addToCart(id,button){
 const p=PRODUCTS.find(x=>x.id===id);cart.push(p);updateCart();button.classList.add("added");button.innerHTML='<i class="fa-solid fa-check"></i> Added';setTimeout(()=>{button.classList.remove("added");button.innerHTML='<i class="fa-solid fa-plus"></i> Add to cart'},1000);toast(`${p.title} added to your cart`);
}
function updateCart(){
 $("cartCount").textContent=cart.length;
 if(!cart.length){$("cartItems").innerHTML='<div class="cart-empty"><i class="fa-solid fa-bag-shopping"></i><p>Your cart is empty.</p><small>Add something you like and it will appear here.</small></div>';$("cartSummary").innerHTML="";return}
 $("cartItems").innerHTML=cart.map((p,i)=>`<div class="cart-item"><img src="${p.img}" alt=""><div style="flex:1"><h4>${p.title}</h4><p>${money(p.price)}</p></div><button class="close" style="width:32px;height:32px" onclick="removeCart(${i})" aria-label="Remove"><i class="fa-solid fa-xmark"></i></button></div>`).join("");
 const total=cart.reduce((s,p)=>s+p.price,0);$("cartSummary").innerHTML=`<div class="cart-total"><span>Total</span><span>${money(total)}</span></div><button class="btn btn-primary" style="width:100%" onclick="toast('Checkout is ready to connect to your payment provider')">Continue to checkout</button>`;
}
function removeCart(i){cart.splice(i,1);updateCart()}
function openCart(){$("cartDrawer").classList.add("open");$("backdrop").classList.add("open");document.body.style.overflow="hidden"}
function closeCart(){$("cartDrawer").classList.remove("open");$("backdrop").classList.remove("open");document.body.style.overflow=""}
function toast(msg){$("toast").textContent=msg;$("toast").classList.add("show");clearTimeout(window._toast);window._toast=setTimeout(()=>$("toast").classList.remove("show"),2200)}
$("searchInput").addEventListener("input",e=>{query=e.target.value.trim().toLowerCase();activeCat="all";renderAll()});
$("searchBtn").onclick=()=>{$("products").scrollIntoView({behavior:"smooth"});$("searchInput").focus()};
$("cartBtn").onclick=openCart;$("closeCart").onclick=closeCart;$("backdrop").onclick=closeCart;
$("wishlistBtn").onclick=()=>toast(`${wishlist.size} item${wishlist.size!==1?"s":""} in your wishlist`);
$("menuBtn").onclick=()=>{const n=$("mobileNav");n.style.display=n.style.display==="none"?"block":"none"};
$("newsletter").onsubmit=e=>{e.preventDefault();const email=$("email").value.trim();if(!email||!email.includes("@")){toast("Please enter a valid email");return}toast("You're subscribed — welcome to NexusShop!");$("email").value=""};
$("dealBtn").onclick=()=>addToCart(2,$("dealBtn"));
$("year").textContent=new Date().getFullYear();
let target=Date.now()+24*60*60*1000+36*60*1000;
function timer(){let d=Math.max(0,target-Date.now()),days=Math.floor(d/86400000),hours=Math.floor(d%86400000/3600000),mins=Math.floor(d%3600000/60000),secs=Math.floor(d%60000/1000);$("d").textContent=days;$("h").textContent=String(hours).padStart(2,"0");$("m").textContent=String(mins).padStart(2,"0");$("s").textContent=String(secs).padStart(2,"0")}
renderAll();updateCart();timer();setInterval(timer,1000);
</script>
</body>
</html>
