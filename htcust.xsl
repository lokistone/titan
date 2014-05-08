<!--
  Generates single XHTML document from DocBook XML source using DocBook XSL
  stylesheets.

  NOTE: The URL reference to the current DocBook XSL stylesheets is
  rewritten to point to the copy on the local disk drive by the XML catalog
  rewrite directives so it doesn't need to go out to the Internet for the
  stylesheets. This means you don't need to edit the <xsl:import> elements on
  a machine by machine basis.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:sbhl="java:net.sf.xslthl.ConnectorSaxonB"
    xmlns:xslthl="http://xslthl.sf.net"
    extension-element-prefixes="sbhl xslthl">

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/docbook.xsl"/>
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/highlight.xsl"/>
<xsl:import href="common.xsl"/>

<xsl:output
    method="html"
    encoding="utf-8"
    doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
    doctype-system="http://www.w3.org/TR/html4/loose.dtd"
    indent="yes" />

<!-- <xsl:param name="highlight.xslthl.config">file:///usr/share/xml/docbook/stylesheet/docbook-xsl/highlighting/xslthl-config.xml</xsl:param>-->
<xsl:param name="highlight.xslthl.config">http://docbook.sourceforge.net/release/xsl/current/highlighting/xslthl-config.xml</xsl:param>

<xsl:template name="user.head.content">
  <script type='text/javascript' src='http://intelliscence.com/web/work/demos/titan/wp-includes/js/jquery/jquery.js?ver=1.11.0'></script>
  <script type='text/javascript' src='http://intelliscence.com/web/work/demos/titan/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
  <script type='text/javascript' src='http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/js/main.js'></script>


  <!--[if lte IE 8]>
  <link rel="stylesheet" href="http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/css/ie8.css" />
  <![endif]-->

  <!--[if IE]>
  <link rel="stylesheet" href="http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/css/ie.css" />
  <![endif]-->

  <link rel='stylesheet' id='style-css-css'  href='http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/style.css?ver=3.9' type='text/css' media='all' />
  <link rel='stylesheet' id='media-css-css'  href='http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/css/media.css' type='text/css' media='all' />
  <link rel='stylesheet' id='animate-css-css'  href='http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/css/animate-custom.css' type='text/css' media='all' />

<style type="text/css">
	a:hover, .tooltip-shortcode{
	color:#e10707;
}
#nav ul .current_page_item a, #nav ul .current-menu-item a, #nav ul > .current-menu-parent a,
#sticky-nav ul .current_page_item a, #sticky-nav ul .current-menu-item a, #sticky-nav ul > .current-menu-parent a,
.footer-area ul li a:hover,
#slidingbar-area ul li a:hover,
.portfolio-tabs li.active a, .faq-tabs li.active a,
.project-content .project-info .project-info-box a:hover,
.about-author .title a,
span.dropcap,.footer-area a:hover,#slidingbar-area a:hover,.copyright a:hover,
#sidebar .widget_categories li a:hover,
#main .post h2 a:hover,
#sidebar .widget li a:hover,
#nav ul a:hover, #sticky-nav ul a:hover,
.date-and-formats .format-box i,
h5.toggle:hover a,
.tooltip-shortcode,.content-box-percentage, .content-boxes a:hover h2,
.more a:hover:after,.read-more:hover:after,.pagination-prev:hover:before,.pagination-next:hover:after,.bbp-topic-pagination .prev:hover:before,.bbp-topic-pagination .next:hover:after,
.single-navigation a[rel=prev]:hover:before,.single-navigation a[rel=next]:hover:after,
#sidebar .widget_nav_menu li a:hover:before,#sidebar .widget_categories li a:hover:before,
#sidebar .widget .recentcomments:hover:before,#sidebar .widget_recent_entries li a:hover:before,
#sidebar .widget_archive li a:hover:before,#sidebar .widget_pages li a:hover:before,
#sidebar .widget_links li a:hover:before,.side-nav .arrow:hover:after,.woocommerce-tabs .tabs a:hover .arrow:after,
.star-rating:before,.star-rating span:before,.price ins .amount, .avada-order-details .shop_table.order_details tfoot tr:last-child .amount,
.price > .amount,.woocommerce-pagination .prev:hover,.woocommerce-pagination .next:hover,.woocommerce-pagination .prev:hover:before,.woocommerce-pagination .next:hover:after,
.woocommerce-tabs .tabs li.active a,.woocommerce-tabs .tabs li.active a .arrow:after,
#wrapper .cart-checkout a:hover,#wrapper .cart-checkout a:hover:before,#wrapper .header-social .top-menu .cart-checkout a:hover,
.widget_shopping_cart_content .total .amount,.widget_layered_nav li a:hover:before,
.widget_product_categories li a:hover:before,#header-sticky .my-account-link-active:after,#header .my-account-link-active:after,.woocommerce-side-nav li.active a,.woocommerce-side-nav li.active a:after,.my_account_orders .order-number a,.shop_table .product-subtotal .amount,
.cart_totals .order-total .amount,form.checkout .shop_table tfoot .order-total .amount,#final-order-details .mini-order-details tr:last-child .amount,.rtl .more a:hover:before,.rtl .read-more:hover:before,#header-sticky .my-cart-link-active:after,#header .my-cart-link-active:after,#wrapper #sidebar .current_page_item > a,#wrapper #sidebar .current-menu-item > a,#wrapper #sidebar .current_page_item > a:before,#wrapper #sidebar .current-menu-item > a:before,#wrapper .footer-area .current_page_item > a,#wrapper .footer-area .current-menu-item > a,#wrapper .footer-area .current_page_item > a:before,#wrapper .footer-area .current-menu-item > a:before,#wrapper #slidingbar-area .current_page_item > a,#wrapper #slidingbar-area .current-menu-item > a,#wrapper #slidingbar-area .current_page_item > a:before,#wrapper #slidingbar-area .current-menu-item > a:before,.side-nav ul > li.current_page_item > a,.side-nav li.current_page_ancestor > a,
.gform_wrapper span.ginput_total,.gform_wrapper span.ginput_product_price,.ginput_shipping_price,
.bbp-topics-front ul.super-sticky a:hover, .bbp-topics ul.super-sticky a:hover, .bbp-topics ul.sticky a:hover, .bbp-forum-content ul.sticky a:hover{
	color:#e10707 !important;
}
#sidebar .image .image-extras .image-extras-content a:hover { color: #333333 !important; }
.star-rating:before,.star-rating span:before {
	color:#e10707 !important;
}
.tagcloud a:hover,#slidingbar-area .tagcloud a:hover,.footer-area .tagcloud a:hover{ color: #FFFFFF !important; text-shadow: none !important; -moz-text-shadow: none !important; -webkit-text-shadow: none !important; }
#nav ul .current_page_item a, #nav ul .current-menu-item a, #nav ul > .current-menu-parent a, #nav ul .current-menu-ancestor a, .navigation li.current-menu-ancestor a
#sticky-nav ul .current_page_item a, #sticky-nav ul .current-menu-item a, #sticky-nav ul > .current-menu-parent a,
#nav ul ul,#sticky-nav ul ul,
.reading-box,
.portfolio-tabs li.active a, .faq-tabs li.active a,
.tab-holder .tabs li.active a,
.post-content blockquote,
.progress-bar-content,
.pagination .current,
.bbp-topic-pagination .current,
.pagination a.inactive:hover,
.woocommerce-pagination .page-numbers:hover,
#nav ul a:hover,#sticky-nav ul a:hover,.woocommerce-pagination .current,
.tagcloud a:hover,#header-sticky .my-account-link:hover:after,#header .my-account-link:hover:after,body #header-sticky .my-account-link-active:after,body #header .my-account-link-active:after,
#bbpress-forums div.bbp-topic-tags a:hover{
	border-color:#e10707 !important;
}
#wrapper .main-nav-search a:hover {border-top: 3px solid transparent !important;}
#nav ul .current-menu-ancestor a,.navigation li.current-menu-ancestor a {
	color: #e10707 !important;
}
.side-nav li.current_page_item a{
	border-right-color:#e10707 !important;
}
.rtl .side-nav li.current_page_item a{
	border-left-color:#e10707 !important;
}
.header-v2 .header-social, .header-v3 .header-social, .header-v4 .header-social,.header-v5 .header-social,.header-v2{
	border-top-color:#e10707 !important;
}
h5.toggle.active span.arrow,
ul.circle-yes li:before,
.progress-bar-content,
.pagination .current,
.bbp-topic-pagination .current,
.header-v3 .header-social,.header-v4 .header-social,.header-v5 .header-social,
.date-and-formats .date-box,.table-2 table thead,
.onsale,.woocommerce-pagination .current,
.woocommerce .social-share li a:hover i,
.price_slider_wrapper .ui-slider .ui-slider-range,
.tagcloud a:hover,.cart-loading,
#toTop:hover,
#bbpress-forums div.bbp-topic-tags a:hover,
.main-nav-search-form input[type="submit"]:hover, .search-page-search-form input[type="submit"]:hover,
ul.arrow li:before,
p.demo_store,
.avada-myaccount-data .digital-downloads li:before, .avada-thank-you .order_details li:before{
	background-color:#e10707 !important;
}
.woocommerce .social-share li a:hover i {
	border-color:#e10707 !important;
}
.bbp-topics-front ul.super-sticky, .bbp-topics ul.super-sticky, .bbp-topics ul.sticky, .bbp-forum-content ul.sticky	{
	background-color: #ffffe8 !important;
	opacity: 1;
}


	#header-sticky .my-cart-link:after, #header-sticky a.search-link:after,
	#header .my-cart-link:after, #header a.search-link:after,
	#small-nav .my-cart-link:after, #small-nav a.search-link:after{ border: none !important; }





body #header-sticky.sticky-header .sticky-shadow{background:rgba(255, 255, 255, 0.97) !important;}
.no-rgba #header-sticky.sticky-header .sticky-shadow{background:#ffffff; filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=97); opacity: 0.97;}


#header-sticky ,#header,#small-nav,#header .login-box,#header-sticky .cart-contents,#header .cart-contents,#small-nav .login-box,#small-nav .cart-contents{
	background-color:#ffffff !important;
}

#main,#wrapper{
	background-color:#ffffff !important;
}

.footer-area{
	background-color:#363839 !important;
}
.footer-area .pyre_tabs .tab-holder .tabs li {
	border-color:#363839 !important;
}

.footer-area{
	border-color:#e9eaee !important;
}

#footer{
	background-color:#282a2b !important;
}

#footer{
	border-color:#4b4c4d !important;
}

.sep-boxed-pricing ul li.title-row{
	background-color:#c40606 !important;
	border-color:#c40606 !important;
}
.pricing-row .exact_price, .pricing-row sup{
	color:#c40606 !important;
}
.image .image-extras{
	background-image: linear-gradient(top, rgba(232,7,7,1) 0%, rgba(214,7,7,1) 100%);
	background-image: -o-linear-gradient(top, rgba(232,7,7,1) 0%, rgba(214,7,7,1) 100%);
	background-image: -moz-linear-gradient(top, rgba(232,7,7,1) 0%, rgba(214,7,7,1) 100%);
	background-image: -webkit-linear-gradient(top, rgba(232,7,7,1) 0%, rgba(214,7,7,1) 100%);
	background-image: -ms-linear-gradient(top, rgba(232,7,7,1) 0%, rgba(214,7,7,1) 100%);

	background-image: -webkit-gradient(
		linear,
		left top,
		left bottom,
		color-stop(0, rgba(232,7,7,1)),
		color-stop(1, rgba(214,7,7,1))
	);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e80707', endColorstr='#d60707')
			progid: DXImageTransform.Microsoft.Alpha(Opacity=0);
}
.no-cssgradients .image .image-extras{
	background:#e80707;
}
.image:hover .image-extras {
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e80707', endColorstr='#d60707')
 			progid: DXImageTransform.Microsoft.Alpha(Opacity=100);
 }
#main .portfolio-one .button,
#main .comment-submit,
#reviews input#submit,
.comment-form input[type="submit"],
.wpcf7-form input[type="submit"],
.bbp-submit-wrapper button,
.button.default,
.price_slider_amount button,
.gform_wrapper .gform_button,
.woocommerce .single_add_to_cart_button,
.woocommerce .shipping-calculator-form .button,
.woocommerce form.checkout #place_order,
.woocommerce .checkout_coupon .button,
.woocommerce .login .button,
.woocommerce .register .button,
.woocommerce .avada-order-details .order-again .button,
.woocommerce .avada-order-details .order-again .button{
	background: #d60707;

	color: #ffffff !important;
	background-image: linear-gradient(top, #e80707 0%, #d60707 100%);
	background-image: -o-linear-gradient(top, #e80707 0%, #d60707 100%);
	background-image: -moz-linear-gradient(top, #e80707 0%, #d60707 100%);
	background-image: -webkit-linear-gradient(top, #e80707 0%, #d60707 100%);
	background-image: -ms-linear-gradient(top, #e80707 0%, #d60707 100%);

	background-image: -webkit-gradient(
		linear,
		left top,
		left bottom,
		color-stop(0, #e80707),
		color-stop(1, #d60707)
	);
	border:1px solid #d60707;

	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e80707', endColorstr='#d60707');
}
.no-cssgradients #main .portfolio-one .button,
.no-cssgradients #main .comment-submit,
.no-cssgradients #reviews input#submit,
.no-cssgradients .comment-form input[type="submit"],
.no-cssgradients .wpcf7-form input[type="submit"],
.no-cssgradients .bbp-submit-wrapper button,
.no-cssgradients .button.default,
.no-cssgradients .price_slider_amount button,
.no-cssgradients .gform_wrapper .gform_button,
.no-cssgradients .woocommerce .single_add_to_cart_button,
.no-cssgradients .woocommerce .shipping-calculator-form .button,
.no-cssgradients .woocommerce form.checkout #place_order,
.no-cssgradients .woocommerce .checkout_coupon .button,
.no-cssgradients .woocommerce .login .button,
.no-cssgradients .woocommerce .register .button,
.no-cssgradients .woocommerce .avada-order-details .order-again .button{
	background:#e80707;
}
#main .portfolio-one .button:hover,
#main .comment-submit:hover,
#reviews input#submit:hover,
.comment-form input[type="submit"]:hover,
.wpcf7-form input[type="submit"]:hover,
.bbp-submit-wrapper button:hover,
.button.default:hover,
.price_slider_amount button:hover,
.gform_wrapper .gform_button:hover,
.woocommerce .single_add_to_cart_button:hover,
.woocommerce .shipping-calculator-form .button:hover,
.woocommerce form.checkout #place_order:hover,
.woocommerce .checkout_coupon .button:hover,
.woocommerce .login .button:hover,
.woocommerce .register .button:hover,
.woocommerce .avada-order-details .order-again .button:hover{
	background: #d60707;
	color: #ffffff !important;
	background-image: linear-gradient(top, #d60707 0%, #e80707 100%);
	background-image: -o-linear-gradient(top, #d60707 0%, #e80707 100%);
	background-image: -moz-linear-gradient(top, #d60707 0%, #e80707 100%);
	background-image: -webkit-linear-gradient(top, #d60707 0%, #e80707 100%);
	background-image: -ms-linear-gradient(top, #d60707 0%, #e80707 100%);

	background-image: -webkit-gradient(
		linear,
		left top,
		left bottom,
		color-stop(0, #d60707),
		color-stop(1, #e80707)
	);
	border:1px solid #d60707;

	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#d60707', endColorstr='#e80707');
}
.no-cssgradients #main .portfolio-one .button:hover,
.no-cssgradients #main .comment-submit:hover,
.no-cssgradients #reviews input#submit:hover,
.no-cssgradients .comment-form input[type="submit"]:hover,
.no-cssgradients .wpcf7-form input[type="submit"]:hover,
.no-cssgradients .bbp-submit-wrapper button:hover,
.no-cssgradients .button.default,
.no-cssgradients .price_slider_amount button:hover,
.no-cssgradients .gform_wrapper .gform_button:hover,
.no-cssgradients .woocommerce .single_add_to_cart_button:hover
.no-cssgradients .woocommerce .shipping-calculator-form .button:hover,
.no-cssgradients .woocommerce form.checkout #place_order:hover,
.no-cssgradients .woocommerce .checkout_coupon .button:hover,
.no-cssgradients .woocommerce .login .button:hover,
.no-cssgradients .woocommerce .register .button:hover
.no-cssgradients .woocommerce .avada-order-details .order-again .button:hover{
	background:#d60707;
}

.page-title-container{border-color:#d2d3d4 !important;}

.footer-area{
	
		padding-top: 43px !important;
	
		padding-bottom: 40px !important;
	}

#footer{
		padding-top: 10px !important;
	
		padding-bottom: 12px !important;
	}

.title-sep,.product .product-border{
	border-color:#e0dede !important;
}

.review blockquote q,.post-content blockquote,form.checkout .payment_methods .payment_box{
	background-color:#f6f6f6 !important;
}
.review blockquote div:after{
	border-top-color:#f6f6f6 !important;
}

.review blockquote q,.post-content blockquote{
	color:#747474 !important;
}



body,#nav ul li ul li a,#sticky-nav ul li ul li a,
#wrapper .fusion-megamenu-wrapper .fusion-megamenu-widgets-container,
.more,
.avada-container h3,
.meta .date,
.review blockquote q,
.review blockquote div strong,
.image .image-extras .image-extras-content h4,
.image .image-extras .image-extras-content h4 a,
.project-content .project-info h4,
.post-content blockquote,
.button.large,
.button.small,
.ei-title h3,.cart-contents,
.comment-form input[type="submit"],
.wpcf7-form input[type="submit"],
.gform_wrapper .gform_button,
.woocommerce-success-message .button,
.woocommerce .single_add_to_cart_button,
.woocommerce .shipping-calculator-form .button,
.woocommerce form.checkout #place_order,
.woocommerce .checkout_coupon .button,
.woocommerce .login .button,
.woocommerce .register .button,
.page-title h3,
.blog-shortcode h3.timeline-title,
#reviews #comments > h2{
	font-family:"Lato", Arial, Helvetica, sans-serif !important;
}
.avada-container h3,
.review blockquote div strong,
.footer-area  h3,
#slidingbar-area  h3,
.button.large,
.button.small,
.woocommerce .single_add_to_cart_button,
.woocommerce .shipping-calculator-form .button,
.woocommerce form.checkout #place_order,
.woocommerce .checkout_coupon .button,
.woocommerce .login .button,
.woocommerce .register .button,
.woocommerce .avada-order-details .order-again .button,
.comment-form input[type="submit"],
.wpcf7-form input[type="submit"],
.gform_wrapper .gform_button{
	font-weight:bold;
}
.meta .date,
.review blockquote q,
.post-content blockquote{
	font-style:italic;
}


#nav, #sticky-nav, .navigation,
.side-nav li a{
	font-family:"Open Sans", Arial, Helvetica, sans-serif !important;
}


#main .reading-box h2,
#main h2,
.page-title h1,
.image .image-extras .image-extras-content h3,.image .image-extras .image-extras-content h3 a,
#main .post h2,
#sidebar .widget h3,
.tab-holder .tabs li a,
.share-box h4,
.project-content h3,
.author .author_title,
h5.toggle a,
.full-boxed-pricing ul li.title-row,
.full-boxed-pricing ul li.pricing-row,
.sep-boxed-pricing ul li.title-row,
.sep-boxed-pricing ul li.pricing-row,
.person-author-wrapper,
.post-content h1, .post-content h2, .post-content h3, .post-content h4, .post-content h5, .post-content h6,
.ei-title h2, #header-sticky,#header .tagline,
table th,.project-content .project-info h4,
.woocommerce-success-message .msg,.product-title, .cart-empty,
#wrapper .fusion-megamenu-wrapper .fusion-megamenu-title{
	font-family:"Antic Slab", Arial, Helvetica, sans-serif !important;
}


.footer-area  h3,#slidingbar-area  h3{
	font-family:"Antic Slab", Arial, Helvetica, sans-serif !important;
}

body,#sidebar .slide-excerpt h2, .footer-area .slide-excerpt h2,#slidingbar-area .slide-excerpt h2{
	font-size:13px;
		line-height:20px;
}
.project-content .project-info h4,.gform_wrapper label,.gform_wrapper .gfield_description{
	font-size:13px !important;
		line-height:20px !important;
}
.blog-shortcode h3.timeline-title { font-size:13px;line-height:13px; }
.counter-box-content { font-size:13px; }

body,#sidebar .slide-excerpt h2, .footer-area .slide-excerpt h2,#slidingbar-area .slide-excerpt h2{
	line-height:20px !important;
}
.project-content .project-info h4{
	line-height:20px !important;
}

#nav,#sticky-nav,.navigation{font-size:15px !important;}

#nav ul li ul li a,#sticky-nav ul li ul li a{font-size:13px !important;}

.header-social *{font-size:12px !important;}

.page-title ul li,page-title ul li a{font-size:10px !important;}

.side-nav li a{font-size:14px !important;}

#sidebar .widget h3{font-size:13px !important;}

#slidingbar-area h3{font-size:13px !important;}

.footer-area h3{font-size:13px !important;}

.copyright{font-size:12px !important;}

#wrapper .fusion-megamenu-wrapper .fusion-megamenu-title{font-size:24px!important;}

#header-sticky .avada-row,#header .avada-row, #main .avada-row, .footer-area .avada-row,#slidingbar-area .avada-row, #footer .avada-row{ max-width:940px; }

.post-content h1{
	font-size:32px !important;
		line-height:48px !important;
}

.post-content h1{
	line-height:48px !important;
}

.post-content h2,.title h2,#main .post-content .title h2,.page-title h1,#main .post h2 a, .woocommerce .checkout h3{
	font-size:18px !important;
		line-height:27px !important;
}

.post-content h2,.title h2,#main .post-content .title h2,.page-title h1,#main .post h2 a, .woocommerce .checkout h3, .cart-empty{
	line-height:27px !important;
}

.post-content h3,.project-content h3,#header .tagline,.product-title{
	font-size:16px !important;
		line-height:24px !important;
}
p.demo_store { font-size:16px !important; }

.post-content h3,.project-content h3,#header .tagline,.product-title{
	line-height:24px !important;
}

.post-content h4{
	font-size:13px !important;
		line-height:20px !important;
}
h5.toggle a,.tab-holder .tabs li a,.share-box h4,.person-author-wrapper, #reviews #comments > h2{
	font-size:13px !important;
}

.post-content h4, #reviews #comments > h2{
	line-height:20px !important;
}

.post-content h5{
	font-size:12px !important;
		line-height:18px !important;
}

.post-content h5{
	line-height:18px !important;
}

.post-content h6{
	font-size:11px !important;
		line-height:17px !important;
}

.post-content h6{
	line-height:17px !important;
}

.ei-title h2{
	font-size:42px !important;
		line-height:63px !important;
}

.ei-title h3{
	font-size:20px !important;
		line-height:30px !important;
}

body,.post .post-content,.post-content blockquote,.tab-holder .news-list li .post-holder .meta,#sidebar #jtwt,.meta,.review blockquote div,.search input,.project-content .project-info h4,.title-row,.simple-products-slider .price .amount,
.quantity .qty,.quantity .minus,.quantity .plus,.blog-shortcode h3.timeline-title, #reviews #comments > h2{color:#747474 !important;}

.post-content h1,.title h1,.woocommerce-success-message .msg,.single-product .woocommerce-message{
	color:#000000 !important;
}

.post-content h2,.title h2,.woocommerce-tabs h2,.search-page-search-form h2, .cart-empty, .woocommerce h2, .woocommerce .checkout h3{
	color:#000000 !important;
}

.post-content h3,#sidebar .widget h3,.project-content h3,.title h3,#header .tagline,.person-author-wrapper span,.product-title{
	color:#000000 !important;
}

.post-content h4,.project-content .project-info h4,.share-box h4,.title h4,.tab-holder .tabs li a{
	color:#000000 !important;
}

.post-content h5,h5.toggle a,.title h5{
	color:#000000 !important;
}

.post-content h6,.title h6{
	color:#000000 !important;
}

.page-title h1{
	color:#000000 !important;
}


.sep-boxed-pricing ul li.title-row{
	color:#333333 !important;
}

.full-boxed-pricing ul li.title-row{
	color:#333333 !important;
}

body a{color:#333333;}
.project-content .project-info .project-info-box a,#sidebar .widget li a, #sidebar .widget .recentcomments, #sidebar .widget_categories li, #main .post h2 a,
.shop_attributes tr th,.image-extras a,.products-slider .price .amount,z.my_account_orders thead tr th,.shop_table thead tr th,.cart_totals table th,form.checkout .shop_table tfoot th,form.checkout .payment_methods label,#final-order-details .mini-order-details th,#main .product .product_title,.shop_table.order_details tr th{color:#333333 !important;}

.page-title ul li,.page-title ul li a{color:#333333 !important;}

#slidingbar-area h3{color:#DDDDDD !important;}

#slidingbar-area,#slidingbar-area article.col,#slidingbar-area #jtwt,#slidingbar-area #jtwt .jtwt_tweet{color:#8C8989 !important;}

#slidingbar-area a{color:#BFBFBF !important;}

#sidebar .widget h3, #sidebar .widget .heading h3{color:#333333 !important;}

.footer-area h3{color:#DDDDDD !important;}

.footer-area,.footer-area article.col,.footer-area #jtwt,.footer-area #jtwt .jtwt_tweet,.copyright{color:#8C8989 !important;}

.footer-area a,.footer-area .pyre_tabs .tab-holder .tabs li a,.copyright a{color:#BFBFBF !important;}

#nav ul a,#sticky-nav ul a,.side-nav li a,#header-sticky .cart-content a,#header-sticky .cart-content a:hover,#header .cart-content a,#header .cart-content a:hover,#small-nav .cart-content a,
#small-nav .cart-content a:hover,#wrapper .header-social .top-menu .cart > a,#wrapper .header-social .top-menu .cart > a > .amount,
#wrapper .header-social .top-menu .cart-checkout a
{color:#333333 !important;}
#header-sticky .my-account-link:after, #header .my-account-link:after{border-color:#333333 !important;}

#nav ul .current_page_item a, #nav ul .current-menu-item a, #nav ul > .current-menu-parent a, #nav ul ul,.navigation li.current-menu-ancestor a,#nav ul li a:hover,
#sticky-nav ul .current_page_item a, #sticky-nav ul .current-menu-item a, #sticky-nav ul > .current-menu-parent a, #sticky-nav ul ul,.navigation li.current-menu-ancestor a,#sticky-nav ul li a:hover
{color:#e10707 !important;border-color:#e10707 !important;}
#nav ul ul,#sticky-nav ul ul{border-color:#e10707 !important;}

#wrapper .main-nav-search a:hover {border-top: 3px solid transparent !important;}

#nav ul ul,#sticky-nav ul ul{background-color:#edebeb;}

#wrapper #nav ul li ul li a,#wrapper #sticky-nav ul li ul li a,.side-nav li li a,.side-nav li.current_page_item li a{color:#333333 !important;}

.ei-title h2{color:#333333 !important;}

.ei-title h3{color:#747474 !important;}

#wrapper .header-social .header-info, #wrapper .header-social a {color:#747474 !important;}
#wrapper .header-social .mobile-topnav-holder li a {color: #333333 !important;}

.sep-single{background-color:#e0dede !important;}
.sep-double,.sep-dashed,.sep-dotted,.search-page-search-form{border-color:#e0dede !important;}
.ls-avada, .avada-skin-rev,.clients-carousel .es-carousel li img,h5.toggle a,.progress-bar,
#small-nav,.portfolio-tabs,.faq-tabs,.single-navigation,.project-content .project-info .project-info-box,
.post .meta-info,.grid-layout .post,.grid-layout .post .content-sep,
.grid-layout .post .flexslider,.timeline-layout .post,.timeline-layout .post .content-sep,
.timeline-layout .post .flexslider,h3.timeline-title,.timeline-arrow,
.counter-box-wrapper,.table-2 table thead,.table-2 tr td,
#sidebar .widget li a,#sidebar .widget .recentcomments,#sidebar .widget_categories li,
.tab-holder,.commentlist .the-comment,
.side-nav,#wrapper .side-nav li a,.rtl .side-nav,h5.toggle.active + .toggle-content,
#wrapper .side-nav li.current_page_item li a,.tabs-vertical .tabset,
.tabs-vertical .tabs-container .tab_content,.page-title-container,.pagination a.inactive,.woocommerce-pagination .page-numbers,.bbp-topic-pagination .page-numbers,.rtl .woocommerce .social-share li,.author .author_social
{border-color:#e0dede;}
.side-nav li a,.product_list_widget li,.widget_layered_nav li,.price_slider_wrapper,.tagcloud a,#header-sticky .cart-content a,#header-sticky .cart-content a:hover,#header-sticky .login-box,#header-sticky .cart-contents,
#header .cart-content a,#header .cart-content a:hover,#header .login-box,#header .cart-contents,#small-nav .login-box,#small-nav .cart-contents,#small-nav .cart-content a,#small-nav .cart-content a:hover,
#customer_login_box,.avada_myaccount_user,.myaccount_user_container span,
.woocommerce-side-nav li a,.woocommerce-content-box,.woocommerce-content-box h2,.my_account_orders tr,.woocommerce .address h4,.shop_table tr,.cart_totals .total,.chzn-container-single .chzn-single,.chzn-container-single .chzn-single div,.chzn-drop,form.checkout .shop_table tfoot,.input-radio,#final-order-details .mini-order-details tr:last-child,p.order-info,.cart-content a img,.panel.entry-content,
.woocommerce-tabs .tabs li a,.woocommerce .social-share,.woocommerce .social-share li,.quantity,.quantity .minus, .quantity .qty,.shop_attributes tr,.woocommerce-success-message,#reviews li .comment-text,
.cart_totals, .shipping_calculator, .coupon, #customer_login .col-1, #customer_login .col-2, .single-product .woocommerce-message,
.cart_totals h2, .shipping_calculator h2, .coupon h2, .woocommerce .checkout h3, #customer_login h2, .order-total, .woocommerce .addresses .title, .cart-empty, .return-to-shop
{border-color:#e0dede !important;}
.price_slider_wrapper .ui-widget-content{background-color:#e0dede;}
.gform_wrapper .gsection{border-bottom:1px dotted #e0dede;}

.quantity .minus,.quantity .plus{background-color:#fbfaf9 !important;}

.quantity .minus:hover,.quantity .plus:hover{background-color:#ffffff !important;}

#slidingbar-area .widget_categories li a, #slidingbar-area li.recentcomments, #slidingbar-area ul li a, #slidingbar-area .product_list_widget li {border-bottom: 1px solid #282A2B !important;}
#slidingbar-area .tagcloud a, #slidingbar-area .pyre_tabs .tab-holder .tabs-wrapper, #slidingbar-area .pyre_tabs .tab-holder .news-list li {border-color: #282A2B !important;}

.footer-area .widget_categories li a, .footer-area li.recentcomments, .footer-area ul li a, .footer-area .product_list_widget li,
.footer-area .tagcloud a,.footer-area .pyre_tabs .tab-holder .tabs-wrapper, .footer-area .pyre_tabs .tab-holder .news-list li {border-color: #505152 !important;}

input#s,#comment-input input,#comment-textarea textarea,.comment-form-comment textarea,.input-text,
.wpcf7-form .wpcf7-text,.wpcf7-form .wpcf7-quiz,.wpcf7-form .wpcf7-number,.wpcf7-form textarea,.wpcf7-form .wpcf7-select,.wpcf7-captchar,.wpcf7-form .wpcf7-date,
.gform_wrapper .gfield input[type=text],.gform_wrapper .gfield input[type=email],.gform_wrapper .gfield textarea,.gform_wrapper .gfield select,
#bbpress-forums .bbp-search-form #bbp_search,.bbp-reply-form input#bbp_topic_tags,.bbp-topic-form input#bbp_topic_title, .bbp-topic-form input#bbp_topic_tags, .bbp-topic-form select#bbp_stick_topic_select, .bbp-topic-form select#bbp_topic_status_select,#bbpress-forums div.bbp-the-content-wrapper textarea.bbp-the-content,
.main-nav-search-form input,.search-page-search-form input,.chzn-container-single .chzn-single,.chzn-container .chzn-drop,
.avada-select-parent select{
background-color:#ffffff !important;}

input#s,input#s .placeholder,#comment-input input,#comment-textarea textarea,#comment-input .placeholder,#comment-textarea .placeholder,.comment-form-comment textarea,.input-text,
.wpcf7-form .wpcf7-text,.wpcf7-form .wpcf7-quiz,.wpcf7-form .wpcf7-number,.wpcf7-form textarea,.wpcf7-form .wpcf7-select,.wpcf7-select-parent .select-arrow,.wpcf7-captchar,.wpcf7-form .wpcf7-date,
.gform_wrapper .gfield input[type=text],.gform_wrapper .gfield input[type=email],.gform_wrapper .gfield textarea,.gform_wrapper .gfield select,
#bbpress-forums .bbp-search-form #bbp_search,.bbp-reply-form input#bbp_topic_tags,.bbp-topic-form input#bbp_topic_title, .bbp-topic-form input#bbp_topic_tags, .bbp-topic-form select#bbp_stick_topic_select, .bbp-topic-form select#bbp_topic_status_select,#bbpress-forums div.bbp-the-content-wrapper textarea.bbp-the-content,
.main-nav-search-form input,.search-page-search-form input,.chzn-container-single .chzn-single,.chzn-container .chzn-drop,.avada-select-parent select
{color:#aaa9a9 !important;}

input#s::-webkit-input-placeholder,#comment-input input::-webkit-input-placeholder,#comment-textarea textarea::-webkit-input-placeholder,.comment-form-comment textarea::-webkit-input-placeholder,.input-text::-webkit-input-placeholder{color:#aaa9a9 !important;}
input#s:-moz-placeholder,#comment-input input:-moz-placeholder,#comment-textarea textarea:-moz-placeholder,.comment-form-comment textarea:-moz-placeholder,.input-text:-moz-placeholder,
input#s:-ms-input-placeholder,#comment-input input:-ms-input-placeholder,#comment-textarea textarea:-moz-placeholder,.comment-form-comment textarea:-ms-input-placeholder,.input-text:-ms-input-placeholder,
{color:#aaa9a9 !important;}

input#s,#comment-input input,#comment-textarea textarea,.comment-form-comment textarea,.input-text,
.wpcf7-form .wpcf7-text,.wpcf7-form .wpcf7-quiz,.wpcf7-form .wpcf7-number,.wpcf7-form textarea,.wpcf7-form .wpcf7-select,.wpcf7-select-parent .select-arrow,.wpcf7-captchar,.wpcf7-form .wpcf7-date,
.gform_wrapper .gfield input[type=text],.gform_wrapper .gfield input[type=email],.gform_wrapper .gfield textarea,.gform_wrapper .gfield_select[multiple=multiple],.gform_wrapper .gfield select,.select-arrow,
#bbpress-forums .quicktags-toolbar,#bbpress-forums .bbp-search-form #bbp_search,.bbp-reply-form input#bbp_topic_tags,.bbp-topic-form input#bbp_topic_title, .bbp-topic-form input#bbp_topic_tags, .bbp-topic-form select#bbp_stick_topic_select, .bbp-topic-form select#bbp_topic_status_select,#bbpress-forums div.bbp-the-content-wrapper textarea.bbp-the-content,#wp-bbp_topic_content-editor-container,#wp-bbp_reply_content-editor-container,
.main-nav-search-form input,.search-page-search-form input,.chzn-container-single .chzn-single,.chzn-container .chzn-drop,
.avada-select-parent select
{border-color:#d2d2d2 !important;}

#wrapper #nav ul li ul li a,#wrapper #sticky-nav ul li ul li a{border-bottom:1px solid #dcdadb !important;}

#wrapper #nav ul li ul li a:hover, #wrapper #nav ul li ul li.current-menu-item > a,
#wrapper #sticky-nav ul li ul li a:hover, #wrapper #sticky-nav ul li ul li.current-menu-item > a,
#header-sticky .cart-content a:hover,#header .cart-content a:hover,#small-nav .cart-content a:hover{background-color:#f5f4f4 !important;}

#header .tagline{
	color:#747474 !important;
}

#header .tagline{
	font-size:16px !important;
	line-height:30px !important;
}

.header-social,#header,.header-v4 #small-nav,.header-v5 #small-nav{
	border-bottom-color:#e5e5e5 !important;
}

#nav ul ul,#sticky-nav ul ul{
	width:170px !important;
}
#nav ul ul li ul,#sticky-nav ul ul li ul{
	left:170px !important;
}
ul.navigation > li:last-child ul ul{
	left:-170px !important;
}
#nav .fusion-megamenu-wrapper ul{left:auto!important;}
.rtl #header-sticky #nav ul ul li ul,.rtl #header #nav ul ul li ul,.rtl #small-nav #nav ul ul li ul, .rtl .sticky-header #sticky-nav ul ul li ul{
	right:170px !important;
	left: auto !important;
}
.rtl ul.navigation > li:last-child ul ul{
	right:-170px !important;
	left: auto !important;
}
.rtl #nav .fusion-megamenu-wrapper ul{left:auto!important;right:auto!important;}

#main #sidebar{
	background-color:transparent;
}

#main #content{
	width:71.1702128%;
}

#main #sidebar{
	width:23.4042553%;
}


#wrapper .header-social{
	background-color:#a0ce4e !important;
}

#wrapper .header-social .menu > li{
	border-color:#e5e5e5 !important;
}

#wrapper .header-social .menu .sub-menu,#wrapper .header-social .login-box,#wrapper .header-social .cart-contents,.main-nav-search-form{
	background-color:#ffffff !important;
}

#wrapper .header-social .menu .sub-menu li, #wrapper .header-social .menu .sub-menu li a,#wrapper .header-social .login-box *,#wrapper .header-social .cart-contents *{
	color:#747474 !important;
}

#wrapper .header-social .menu .sub-menu li a:hover{
	background-color:#fafafa !important;
}

#wrapper .header-social .menu .sub-menu li a:hover{
	color:#333333 !important;
}

#wrapper .header-social .menu .sub-menu,#wrapper .header-social .menu .sub-menu li,.top-menu .cart-content a,#wrapper .header-social .login-box,#wrapper .header-social .cart-contents,.main-nav-search-form{
	border-color:#e5e5e5 !important;
}

#header-sticky .cart-checkout,#header .cart-checkout,.top-menu .cart,.top-menu .cart-content a:hover,.top-menu .cart-checkout,#small-nav .cart-checkout{
	background-color:#fafafa !important;
}

h5.toggle span.arrow{background-color:#333333;}

.progress-bar-content{background-color:#e10707 !important;border-color:#e10707 !important;}
.content-box-percentage{color:#e10707 !important;}

.progress-bar{background-color:#f6f6f6;border-color:#f6f6f6;}

.date-and-formats .format-box{background-color:#eef0f2;}

.es-nav-prev,.es-nav-next{background-color:#999999;}

.es-nav-prev:hover,.es-nav-next:hover{background-color:#808080;}

.content-boxes .col{background-color:transparent;}

#sidebar .tab-holder,#sidebar .tab-holder .news-list li{border-color:#ebeaea !important;}
#sidebar .pyre_tabs .tabs-container{background-color:#ffffff !important;}
body #sidebar .tab-hold .tabs li{border-right:1px solid #ffffff !important;}
body #sidebar .tab-hold .tabs li a{background:#ebeaea !important;border-bottom:0 !important;color:#747474 !important;}
body #sidebar .tab-hold .tabs li a:hover{background:#ffffff !important;border-bottom:0 !important;}
body #sidebar .tab-hold .tabs li.active a{background:#ffffff !important;border-bottom:0 !important;}
body #sidebar .tab-hold .tabs li.active a{border-top-color:#e10707!important;}

.share-box{background-color:#f6f6f6;}

.grid-layout .post,.timeline-layout .post{background-color:transparent;}

.grid-layout .post .flexslider,.timeline-layout .post,.timeline-layout .post .content-sep,
.timeline-layout .post .flexslider,h3.timeline-title,.grid-layout .post,.grid-layout .post .content-sep,.products li,.product-details-container,.product-buttons,.product-buttons-container{border-color:#ebeaea !important;}
.align-left .timeline-arrow:before,.align-left .timeline-arrow:after{border-left-color:#ebeaea !important;}
.align-right .timeline-arrow:before,.align-right .timeline-arrow:after{border-right-color:#ebeaea !important;}
.timeline-circle,.timeline-title{background-color:#ebeaea !important;}
.timeline-icon{color:#ebeaea;}

	#bbpress-forums li.bbp-header,
	#bbpress-forums div.bbp-reply-header,#bbpress-forums #bbp-single-user-details #bbp-user-navigation li.current a,div.bbp-template-notice, div.indicator-hint{ background:#ebeaea !important; }
	#bbpress-forums .bbp-replies div.even { background: transparent !important; }

	#bbpress-forums ul.bbp-lead-topic, #bbpress-forums ul.bbp-topics, #bbpress-forums ul.bbp-forums, #bbpress-forums ul.bbp-replies, #bbpress-forums ul.bbp-search-results,
	#bbpress-forums li.bbp-body ul.forum, #bbpress-forums li.bbp-body ul.topic,
	#bbpress-forums div.bbp-reply-content,#bbpress-forums div.bbp-reply-header,
	#bbpress-forums div.bbp-reply-author .bbp-reply-post-date,
	#bbpress-forums div.bbp-topic-tags a,#bbpress-forums #bbp-single-user-details,div.bbp-template-notice, div.indicator-hint,
	.bbp-arrow{ border-color:#ebeaea !important; }



.main-flex .flex-control-nav{display:none !important;}

@media only screen and (max-width: 940px){
	.breadcrumbs{display:none !important;}
}
@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: portrait){
	.breadcrumbs{display:none !important;}
}


.navigation > li > a,.navigation li.current-menu-ancestor a{height:83px;line-height:83px;}
.navigation > li > a,.navigation li.current-menu-ancestor a{height:83px;line-height:83px;}
#nav ul ul,#sticky-nav ul ul{top:86px;}

.sticky-header .navigation > li > a.my-cart-link,
.sticky-header .navigation li.current-menu-ancestor a.my-cart-link,
#sticky-nav ul li > a.my-cart-link
{height:63px;line-height:63px;}

#nav ul li, #sticky-nav ul li { padding-right: 26px; }

.ei-slider{width:100% !important;}

.ei-slider{height:400px !important;}

.button,.gform_wrapper .gform_button{border-color:#780404 !important;}

.button,.gform_wrapper .gform_button{border-width:1px !important;}




.reading-box{background-color:#f6f6f6 !important;}

.isotope .isotope-item {
  -webkit-transition-property: top, left, opacity;
     -moz-transition-property: top, left, opacity;
      -ms-transition-property: top, left, opacity;
       -o-transition-property: top, left, opacity;
          transition-property: top, left, opacity;
}



.header-v5 #header .logo{float:left;}


.bbp_reply_admin_links .admin_links_sep, .bbp-admin-links .admin_links_sep{
	display: none;
}

.rev_slider_wrapper{
	position:relative
}

.rev_slider_wrapper .shadow-left{
	position:absolute;
	background-image:url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/shadow-top.png);
	background-repeat:no-repeat;
	background-position:top center;
	height:42px;
	width:100%;
	top:0;
	z-index:99;
}

.rev_slider_wrapper .shadow-left{top:-1px;}

.rev_slider_wrapper .shadow-right{
	position:absolute;
	background-image:url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/shadow-bottom.png);
	background-repeat:no-repeat;
	background-position:bottom center;
	height:32px;
	width:100%;
	bottom:0;
	z-index:99;
}

.avada-skin-rev{
	border-top: 1px solid #d2d3d4;
	border-bottom: 1px solid #d2d3d4;
}

.rev_slider_wrapper .tp-leftarrow, .rev_slider_wrapper .tp-rightarrow{
	background-color: rgba(0, 0, 0, 0.5)  !important;
	background-repeat: no-repeat;
	width: 63px !important;
	height: 63px !important;
	position: absolute;
	top: 50% !important;
	margin-top:-31px !important;
	opacity:0.8;
	position:absolute !important;
}

.rev_slider_wrapper .tp-rightarrow{
	left:auto !important;
	right:0 !important;
}

.no-rgba .rev_slider_wrapper .tp-leftarrow, .no-rgba .rev_slider_wrapper .tp-rightarrow{
	background-color:#ccc  !important;
}

.rev_slider_wrapper:hover .tp-leftarrow,.rev_slider_wrapper:hover .tp-rightarrow{
	display:block !important;
	opacity:0.8 !important;
}

.rev_slider_wrapper .tp-leftarrow:hover, .rev_slider_wrapper .tp-rightarrow:hover{
	opacity:1 !important;
}

.rev_slider_wrapper .tp-leftarrow{
	background-image: url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/ls_prev.png) !important;
	background-position: 19px 19px  !important;
	left: 0 !important;
	margin-left:0 !important;
	z-index:100;
	opacity: 0;
}

.rev_slider_wrapper .tp-rightarrow{
	background-image: url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/ls_next.png)  !important;
	background-position: 29px 19px  !important;
	right: 0  !important;
	margin-left:0 !important;
	z-index:100;
	opacity: 0;
}

.tp-bullets .bullet.last{
	clear:none !important;
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.3), only screen and (-o-min-device-pixel-ratio: 13/10), only screen and (min-resolution: 120dpi) {
	.rev_slider_wrapper .tp-leftarrow{
		background-image: url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/ls_prev@2x.png) !important;
		-webkit-background-size:12px 24px !important;
		   -moz-background-size:12px 24px !important;
		     -o-background-size:12px 24px !important;
		        background-size:12px 24px !important;
	}

	.rev_slider_wrapper .tp-rightarrow{
		background-image: url(http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/images/ls_next@2x.png) !important;
		-webkit-background-size:12px 24px !important;
		   -moz-background-size:12px 24px !important;
		     -o-background-size:12px 24px !important;
		        background-size:12px 24px !important;
	}
}
	
		#wrapper{
		width:100%;
	}
	//.wrapper_blank { display: block; }
	@media only screen and (min-width: 801px) and (max-width: 1014px){
		#wrapper{
			width:auto;
		}
	}
	@media only screen and (min-device-width: 801px) and (max-device-width: 1014px){
		#wrapper{
			width:auto;
		}
	}
	
	
	
	
	
		.page-title-container{
		background-color:#F6F6F6;
	}
	
	#header{
			}

	#header{
					}

	#main{
		
				padding-top: 55px !important;
		
				padding-bottom: 40px !important;
			}

	#main{
				
		
		
	}

	.page-title-container{
		
				-webkit-background-size: auto;
		-moz-background-size: auto;
		-o-background-size: auto;
		background-size: auto;
		
		
		
	}

		.page-title-container{
		height:87px !important;
	}
	
	
	
	
		.width-100 .fullwidth-box {
		margin-left: -20px; margin-right: -20px;
	}
	
		
		</style>

  <script type='text/javascript' src='http://intelliscence.com/web/work/demos/titan/wp-content/themes/Avada/js/main.js'></script>
</xsl:template>


<xsl:template match="*" mode="process.root">
  <xsl:variable name="doc" select="self::*"/>

  <xsl:call-template name="user.preroot"/>
  <xsl:call-template name="root.messages"/>

  <html>
    <xsl:call-template name="root.attributes"/>
    <head>
      <xsl:call-template name="system.head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
      <xsl:call-template name="head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
      <xsl:call-template name="user.head.content">
        <xsl:with-param name="node" select="$doc"/>
      </xsl:call-template>
    </head>
    <body>
      <xsl:call-template name="body.attributes"/>
	<div id="wrapper" >
          <div class="header-wrapper">
	   <div class="header-v1">
             <header id="header">
		<div class="avada-row" style="margin-top:0px;margin-bottom:0px;">
			<div class="logo" style="margin-right:0px;margin-top:31px;margin-left:0px;margin-bottom:31px;">
				<a href="http://intelliscence.com/web/work/demos/titan">
					<img src="http://intelliscence.com/web/work/demos/titan/wp-content/uploads/2014/04/main-logo3.png" alt="Titan" class="normal_logo" />
									</a>
			</div>
						<nav id="nav" class="nav-holder">
							<ul class="navigation menu fusion-navbar-nav">
<li id="menu-item-4678" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4678"><a    href="#">Home</a></li>
<li id="menu-item-4707" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4707"><a    href="#">Learn</a></li>
<li id="menu-item-4708" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4708"><a    href="#">Showcase</a></li>
<li id="menu-item-4709" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4709"><a    href="#">Support</a></li>
<li id="menu-item-4710" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4710"><a    href="#">Download</a></li>
<li id="menu-item-4711" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-3610 current_page_item menu-item-4711"><a    href="#">Documentation</a></li>
<li id="menu-item-4712" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4712"><a    href="#">Blog &#038; Events</a></li>
			<li class="main-nav-search">
		<a id="main-nav-search-link" class="search-link"></a>
		<div id="main-nav-search-form" class="main-nav-search-form">
			<form role="search" id="searchform" method="get" action="http://intelliscence.com/web/work/demos/titan/">
				<input type="text" value="" name="s" id="s" />
				<input type="submit" value="&#xf002;" />
			</form>
		</div>
	</li>
	</ul>
			</nav>
						<div class="mobile-nav-holder main-menu"></div>
					</div>
	</header>
</div>		<div class="init-sticky-header"></div>
		</div>
		<header id="header-sticky" class="sticky-header">
<div class="sticky-shadow">
	<div class="avada-row">
		<div class="logo">
			<a href="http://intelliscence.com/web/work/demos/titan">
				<img src="http://intelliscence.com/web/work/demos/titan/wp-content/uploads/2014/04/main-logo3.png" alt="Titan" data-max-width="" class="normal_logo" />
							</a>
		</div>
		<nav id="sticky-nav" class="nav-holder">
		<ul class="navigation menu fusion-navbar-nav">
			<!-- <li id="menu-item-4678" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-3610 current_page_item menu-item-4678"><a    href="http://intelliscence.com/web/work/demos/titan/">Home</a></li> -->
<li id="menu-item-4678" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4678"><a    href="#">Home</a></li>
<li id="menu-item-4707" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4707"><a    href="#">Learn</a></li>
<li id="menu-item-4708" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4708"><a    href="#">Showcase</a></li>
<li id="menu-item-4709" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4709"><a    href="#">Support</a></li>
<li id="menu-item-4710" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4710"><a    href="#">Download</a></li>
<li id="menu-item-4711" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-3610 current_page_item menu-item-4711"><a    href="#">Documentation</a></li>
<li id="menu-item-4712" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4712"><a    href="#">Blog &#038; Events</a></li>
									<li class="main-nav-search">
				<a id="sticky-nav-search-link" class="search-link"></a>
				<div id="sticky-nav-search-form" class="main-nav-search-form">
					<form role="search" id="searchform" method="get" action="http://intelliscence.com/web/work/demos/titan/">
						<input type="text" value="" name="s" id="s" />
						<input type="submit" value="&#xf002;" />
					</form>
				</div>
			</li>
					</ul>
		</nav>
				<div class="mobile-nav-holder"></div>
			</div>
	</div>
</header>
			
<div id="main" class="clearfix width-100" style="padding-left:20px;padding-right:20px">

      <xsl:apply-templates select="."/>

</div>

      <div class="clearer"></div>
			<footer id="footer">
		<div class="avada-row">
					<ul class="copyright">
				<li>Copyright 2014 All Rights Reserved - Titan <br />
Titan is a trademark of Aurelius LLC. Cassandra, HBase, and Hadoop are trademarks of the Apache Software Foundation.<br />
Documentation generated with <a href="http://sphinx-doc.org/">Sphinx</a>.<br />

<span class='links'>Photo Attributions - Terms - Privacy</span></li>
			</ul>
		</div>
	</footer>
			</div><!-- wrapper -->
	

    </body>
  </html>
  <xsl:value-of select="$html.append"/>

  <!-- Generate any css files only once, not once per chunk -->
  <xsl:call-template name="generate.css.files"/>
</xsl:template>





<!--
<xsl:template match='xslthl:keyword'>
   <b class="hl-keyword"><xsl:apply-templates mode="xslthl"/></b>
</xsl:template>

<xsl:template match='xslthl:comment'>
   <i class="hl-comment" style="color: black"><xsl:apply-templates mode="xslthl"/></i>
</xsl:template>

<xsl:template match="xslthl:attribute" mode="xslthl">
  <span class="hl-attribute" style="color: #F5844C"><xsl:apply-templates mode="xslthl"/></span>
</xsl:template>

<xsl:template match="xslthl:string" mode="xslthl">
  <b class="hl-string"><xsl:apply-templates mode="xslthl"/></b>
</xsl:template>

<xsl:template match="xslthl:value" mode="xslthl">
  <span class="hl-value" style="color: #993300"><xsl:apply-templates mode="xslthl"/></span>
</xsl:template>
-->

</xsl:stylesheet>
