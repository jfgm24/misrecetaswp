<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta name="description" content="Pagina de mis recetas">
    <meta name="keywords" content="recetas, gastronomia, comidas, sabrosa">
    <link rel="icon" href="<?php echo get_stylesheet_directory_uri(); ?>/images/identity/ico_Food.png">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,300;0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/css/style.css">
    <?php wp_head(); ?>
</head>

<body>
    <div class="container">
        <header id="header" class="block-center-row mb-2">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/identity/MisRecetas.png" alt="Mis recetas">
        </header>

        <?php 
            wp_nav_menu(
                array(
                    'theme_location', 'menu-1',
                    'menu_id' => 'menu-primary',
                    'container' => 'nav',
                    'container_class' => 'nav-main block-center-row txt- 18 txt-bold  mb-2',
                    'container_id' => 'nav-main',
            )
        );
        ?>

        <!-- <nav id="nav-main" class="block-center-row txt-18 txt-bold mb-3">
            <span>Inicio</span>
            <a href="" class="separator-pad">|</a>
            <a href="<?php //echo get_stylesheet_directory_uri(); ?>/recetas.html">Recetas</a>
            <a href="" class="separator-pad">|</a>
            <a href="<?php //echo get_stylesheet_directory_uri(); ?>/contactar.html">Contactar</a>
        </nav> -->