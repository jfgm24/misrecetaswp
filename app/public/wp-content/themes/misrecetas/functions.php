<?php

if (!function_exists('my_themes_setup')):
    function my_theme_setup() {
        
        // Añadimos title de forma automatica
        add_theme_support('title-tag');

        // añadimos imagen destacada / featured image
        add_theme_support('post-thumbnails');
        
        // Soporte para menus        
        register_nav_menus(
            array(
                'menu-1' => esc_html__('primary','misrecetas')
            )
        );

    }
endif;
add_action('after_setup_theme' , 'my_theme_setup');  

