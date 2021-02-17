<?php get_header(); ?>

<main class="grid">


    <?php
    $args = array(
        'posts_per_page' => 6,
        'post_status' => 'publish',
        'post_type' => 'post',
        //'paged' => $paged
    );

    $the_query = new WP_Query($args);
    ?>

    <?php if ($the_query->have_posts()) : ?>

        <section class="col-lg-8 col-md-8 col-sm-12">
            <div class="grid">

                <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>

                    <div class="col-lg-6 col-md-6 mb-2">
                        <div class=mb-05>
                            <a href="<?php the_permalink(); ?>"><img class="img-lg bg-light pad-1 rounded" src="<?php echo get_the_post_thumbnail_url(false, 'medium_large'); ?>" alt="<?php the_title(); ?>"></a>
                        </div>
                        <h2 class="head-strong-ligth mb-1"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                    </div>

                <?php endwhile;
                wp_reset_postdata(); ?>

            </div>
        </section>

    <?php endif ?>

    <aside class="col-lg-4 col-md-4 col-sm-12">

        <h2 class="head-strong-ligth  txt-center mb-1">Menu del día</h2>
        <div class="border pad-1 rounded">
            <div class="grip">

                <?php $menu_del_dia = get_field('menu_del_dia', get_page_by_path('menu-del-dia')->ID); ?>
                <?php if ($menu_del_dia) : ?>
                    <?php foreach ($menu_del_dia as $post) : setup_postdata($post); ?>

                        <div class="col-12 mb-1 pad-1">
                            <h3 class="txt-11 head-strong mb-05 txt-center"><?php the_category(); ?></h3>
                            <img class="img-sm rounded" src="<?php echo get_the_post_thumbnail_url(false, 'medium_large'); ?>" alt="<?php the_title(); ?>">
                            <h3 class="txt-12 head-strong mb-05 txt-center"><?php the_title(); ?></h3>
                        </div>

                    <?php endforeach; ?>
                <?php endif; ?>

            </div>
        </div>
    </aside>

</main>

<?php get_footer(); ?>