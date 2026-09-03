<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · refined</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f7f6f4;
      color: #1f1f2b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    :root {
      --bg-body: #f7f6f4;
      --card-bg: #ffffff;
      --primary: #1f1f2b;
      --accent: #c36f4a;
      --accent-soft: #eed9ce;
      --accent-dark: #a35737;
      --muted: #6b6b7a;
      --muted-light: #ababb8;
      --radius-lg: 24px;
      --radius-md: 16px;
      --radius-sm: 12px;
      --shadow-sm: 0 6px 20px rgba(0,0,0,0.02);
      --shadow-hover: 0 20px 40px -8px rgba(0,0,0,0.06);
      --transition: 0.2s cubic-bezier(0.2, 0, 0, 1);
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }
    /* header */
    header {
      background: rgba(255,255,255,0.88);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 12px;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand i {
      color: var(--accent);
      font-size: 26px;
    }
    .brand span.accent {
      color: var(--accent);
    }
    .nav-links {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 500;
      color: var(--muted);
      transition: var(--transition);
      text-decoration: none;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: #f0eeea;
      color: var(--primary);
    }
    .nav-links a i {
      margin-right: 6px;
      font-size: 13px;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #f0eeea;
      border-radius: 48px;
      padding: 0 12px 0 18px;
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .search-wrap:focus-within {
      background: #fff;
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(195,111,74,0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 160px;
      outline: none;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted-light);
    }
    .search-wrap button {
      background: transparent;
      border: none;
      color: var(--muted);
      padding: 6px 0 6px 10px;
      font-size: 15px;
      transition: var(--transition);
      cursor: pointer;
    }
    .search-wrap button:hover {
      color: var(--accent);
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: transparent;
      border: none;
      color: var(--muted);
      font-size: 18px;
      transition: var(--transition);
      cursor: pointer;
      position: relative;
    }
    .icon-btn:hover {
      background: #f0eeea;
      color: var(--primary);
    }
    .cart-badge {
      position: absolute;
      top: 0;
      right: 0;
      background: var(--accent);
      color: #fff;
      font-size: 10px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
      transform: translate(4px, -4px);
    }
    .mobile-toggle {
      display: none;
      background: #f0eeea;
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      font-size: 18px;
      color: var(--primary);
      cursor: pointer;
    }
    #mobileMenu {
      display: none;
      background: #fff;
      padding: 16px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.02);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul a {
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      display: flex;
      align-items: center;
      gap: 12px;
      text-decoration: none;
      transition: var(--transition);
    }
    #mobileMenu ul a:hover {
      background: #f7f6f4;
    }
    #mobileMenu ul a i {
      width: 22px;
      color: var(--muted);
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #1f1f2b, #2c2c3e);
      border-radius: var(--radius-lg);
      margin: 20px 0 0;
      padding: 56px 48px;
      color: #fff;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -80px;
      bottom: -80px;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(195,111,74,0.15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(195,111,74,0.2);
      color: var(--accent-soft);
      padding: 4px 18px;
      border-radius: 40px;
      font-size: 13px;
      font-weight: 600;
      letter-spacing: 0.3px;
      margin-bottom: 16px;
    }
    .hero h1 {
      font-size: 44px;
      font-weight: 700;
      line-height: 1.1;
      max-width: 600px;
      margin-bottom: 12px;
    }
    .hero p {
      color: rgba(255,255,255,0.75);
      max-width: 480px;
      margin-bottom: 28px;
      font-size: 16px;
    }
    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      border: 2px solid transparent;
      transition: var(--transition);
      cursor: pointer;
      background: transparent;
    }
    .btn-primary {
      background: var(--accent);
      border-color: var(--accent);
      color: #fff;
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(195,111,74,0.25);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      border-color: rgba(255,255,255,0.18);
      color: #fff;
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.16);
      border-color: rgba(255,255,255,0.3);
    }
    .btn-outline-dark {
      background: transparent;
      border-color: rgba(31,31,43,0.12);
      color: var(--primary);
    }
    .btn-outline-dark:hover {
      background: var(--primary);
      border-color: var(--primary);
      color: #fff;
    }

    /* sections */
    .section {
      padding: 48px 0 32px;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 10px;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.2px;
    }
    .section-header p {
      color: var(--muted);
      font-size: 15px;
      margin-top: 2px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      text-decoration: none;
      white-space: nowrap;
    }
    .view-all:hover {
      gap: 14px;
      color: var(--accent-dark);
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--card-bg);
      border-radius: var(--radius-md);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card .icon {
      width: 56px;
      height: 56px;
      background: var(--accent-soft);
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 22px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 4px;
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--card-bg);
      border-radius: var(--radius-md);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      position: relative;
      background: #f4f3f0;
      aspect-ratio: 1/1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--primary);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      padding: 4px 14px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }
    .badge.sale {
      background: var(--accent);
    }
    .product-card .wish {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 36px;
      height: 36px;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(2px);
      border-radius: 50%;
      border: none;
      display: grid;
      place-items: center;
      color: var(--muted);
      font-size: 16px;
      transition: var(--transition);
      cursor: pointer;
    }
    .product-card .wish:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.1);
    }
    .product-card .body {
      padding: 16px 18px 10px;
      flex: 1;
    }
    .product-card .body .category {
      font-size: 12px;
      font-weight: 600;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      margin: 4px 0 6px;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      color: #e6b422;
      font-size: 13px;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
    }
    .product-card .footer {
      padding: 0 18px 18px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 10px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      transition: var(--transition);
      cursor: pointer;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.01);
    }
    .product-card .footer .add-btn.added {
      background: #2b7a6e;
    }

    /* deal */
    .deal-wrap {
      display: flex;
      background: var(--card-bg);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: #f0eeea;
      min-height: 260px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      padding: 40px 44px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: #e9c46a;
      color: var(--primary);
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 12px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 28px;
      font-weight: 700;
      margin-bottom: 4px;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 12px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 34px;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 6px 0 16px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 8px 0 20px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 8px 16px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 4px 2px 12px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 40px;
    }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card-bg);
      border-radius: var(--radius-md);
      padding: 24px 26px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
    }
    .testimonial-card .stars {
      color: #e6b422;
      font-size: 15px;
      letter-spacing: 2px;
      margin-bottom: 8px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 15px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 14px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: #f0eeea;
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* newsletter */
    .newsletter-wrap {
      background: var(--primary);
      border-radius: var(--radius-lg);
      padding: 44px 48px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 {
      font-size: 24px;
      font-weight: 700;
      margin-bottom: 2px;
    }
    .newsletter-wrap .text p {
      opacity: 0.7;
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      background: rgba(255,255,255,0.08);
      color: #fff;
      font-size: 15px;
      outline: 2px solid transparent;
      transition: var(--transition);
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255,255,255,0.4);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.14);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      border-color: var(--accent);
      color: #fff;
      padding: 14px 32px;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 10px;
      font-size: 14px;
    }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.02);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 8px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 280px;
      line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: #f0eeea;
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 15px;
      text-decoration: none;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 12px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul a {
      color: var(--muted);
      font-size: 14px;
      text-decoration: none;
      transition: var(--transition);
    }
    .footer-grid .col ul a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid rgba(0,0,0,0.02);
      color: var(--muted-light);
      font-size: 13px;
    }

    @media (max-width: 1024px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .search-wrap input { width: 120px; }
      .hero { padding: 40px 28px; }
      .hero h1 { font-size: 32px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 600px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .hero h1 { font-size: 26px; }
      .hero { padding: 28px 20px; margin: 12px 0 0; border-radius: var(--radius-md); }
      .container { padding: 0 16px; }
      .section { padding: 32px 0 20px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-content h3 { font-size: 22px; }
      .timer-box { min-width: 52px; padding: 6px 10px; }
      .timer-box .num { font-size: 18px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 18px; }
      .header-inner { flex-wrap: nowrap; }
      .search-wrap input { width: 80px; font-size: 13px; }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-home"></i>Home</a></li>
      <li><a href="#categories"><i class="fas fa-grid-2"></i>Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i>Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i>Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i>Reviews</a></li>
    </ul>
    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-badge" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
        <li><a href="#categories"><i class="fas fa-grid-2"></i>Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i>Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i>Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i>Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i>Account</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> Fresh drops 2026</div>
      <h1>Essentials, elevated.</h1>
      <p>Discover a curated edit of fashion, tech, and accessories — with free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Categories</h2><p>Shop by department</p></div>
        <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending now</h2><p>Popular picks from our community</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div><h2>⚡ Flash deal</h2><p>Limited stock – grab it fast</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy"></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>What our customers say</h2><p>Real reviews, real people</p></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text"><h3>Stay in the loop</h3><p>Exclusive offers, early access & new arrivals</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i><span>N
