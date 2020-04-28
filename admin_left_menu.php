<div id="menu-left">

<a href = "list_users.php">
  	<div <?php if($admin_left_selected == "USERS")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/admin_users.png">
  	<br/>Users<br/></div>
  </a>

  <a href = "backup_helper.php">
  	<div <?php if($admin_left_selected == "BACKUP")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/admin_export.png">
  	<br/>Backup<br/></div>
  </a>

</div>
