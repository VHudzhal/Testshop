<form method='get' id='search-form'
      action="<?php echo esc_url( home_url( '/' ) ); ?>" style="">
    <div class="input-group">
        <input type="text" class='field form-control' name='s' id='s'
               placeholder="<?php esc_attr_e( 'Search', 'myshop' ); ?>" />
        <div class="input-group-append">
            <button type="submit" class="submit btn" name="submit"
                    id="searchsubmit" value="<?php esc_attr_e( 'Search', 'myshop' ); ?>" >
                <?php esc_attr_e( '', 'myshop' ); ?>
            </button>
        </div>
    </div>

</form>
