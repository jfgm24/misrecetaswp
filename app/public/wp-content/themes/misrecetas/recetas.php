<?php /* Template name: recetas */ ?>

<?php get_header(); ?>

<main>

    <?php
    $args = array(
        'posts_per_page' => 4,
        'post_status' => 'publish',
        'post_type' => 'post',
        'paged' => $paged
    );

    $the_query = new WP_Query($args);
    ?>

    <?php if ($the_query->have_posts()) : ?>

        <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>

            <article class="mb-1">
                <h2 class="head-strong-ligth pad-1 txt-22"> <a href="<?php the_permalink(); ?>"> <?php the_title(); ?></a></h2>
                <div class="grid">

                    <div class="col-lg-3 col-md-4">
                        <?php the_post_thumbnail('medium-large'); ?>
                    </div>
                    <div class="col-lg-9 col-md-8">
                        <p class="head-strong-ligth mb-1 txt-20"><?php echo get_the_date(); ?> | <?php the_author(); ?></p>
                        <p class="line-14 mb-1"><?php the_excerpt(); ?></p>
                        <a class="link-receta mb-2" href="<?php the_permalink(); ?>">Ver receta</a>
                    </div>

                </div>
            </article>

        <?php endwhile;
        wp_reset_postdata(); ?>

        <nav class="nav-page txt-18 block-center-row mb-2">
            <?php
            echo paginate_links(
                array(
                    'current' => max(1, $paged),
                    'total'   => $the_query->max_num_pages,
                    'show_all' => true,
                    'prev_text' => '<',
                    'next_text' => '>',
                    'after_page_number' => '<span class="separator">|</span>'
                )
            );
            ?>
        </nav>

    <?php else : ?>

        <div>No hay recetas</div>

    <?php endif; ?>
</main>




<?php get_footer(); ?>