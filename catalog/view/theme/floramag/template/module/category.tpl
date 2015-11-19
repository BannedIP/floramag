<nav class="menu">
    <div> <?php var_dump($categories);?> </div>
     <ul class="nav">
  <?php foreach ($categories as $category) { ?>
      
          <li class="dropdown" ><a href="<?php echo $category['href']; ?>" class="list-group-item <?php if ($category['category_id'] == $category_id) { ?> active <?php }?>"><?php echo $category['name']; ?></a>
          
          <?php if ($category['children']) { ?>
                <ul class="dropdown-menu pull-right">
              <?php foreach ($category['children'] as $child) { ?>
                  <?php if ($child['category_id'] == $child_id) { ?>
                      <li class="dropdown"><a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;-+ <?php echo $child['name']; ?></a>
                      
                      
                      
                     
                  <?php } else { ?>
                      <li class="dropdown"><a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                  <?php } ?>
                  <?php if ($child['children']) { ?>
                             <ul class="dropdown-menu pull-right">
                          <?php foreach ($child['children'] as $child2) { ?>
                              <?php if ($child2['category_id'] == $child_id) { ?>
                                 <li><a href="<?php echo $child2['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-+ <?php echo $child2['name']; ?></a></li>



                              <?php } else { ?>
                                  <li><a href="<?php echo $child2['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <?php echo $child2['name']; ?></a></li>
                              <?php } ?>
                          <?php } ?>
                                 </ul>
                      <?php } ?>
                    </li>
              <?php } ?>
                    </ul>
          <?php } ?>
         </li>

  <?php } ?>
    </ul>
</nav>
