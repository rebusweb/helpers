Drupal
======

## Drupal install:
```drush dl drupal --drupal-project-rename=example
cd example
drush site-install standard --db-url='mysql://[db_user]:[db_pass]@localhost/[db_name]' --site-name=Example --account-name=admin --account-pass=[user_pass]
mkdir sites/all/modules/contrib
mkdir sites/all/modules/custom
drush dis overlay -y
drush pm-uninstall overlay -y
drush dl adminimal_theme adminimal_admin_menu module_filter
drush en -y adminimal_admin_menu module_filter
drush variable-set admin_theme adminimal
drush variable-set admin_menu_margin_top 0
drush variable-set adminimal_admin_menu_render "hidden"
drush dis -y comment contextual dashboard overlay
drush dl omega
drush en -y omega
drush cc all
drush omega-wizard
drush omega-export --revert
drush dis -y bartik seven
drush dl ctools views context devel diff features entity entityreference jquery_update panels panels_everywhere ds pathauto strongarm token redirect
drush en -y ctools views_content page_manager views views_ui context context_ui devel devel_node_access diff features entity entity_token entityreference jquery_update panels panels_everywhere ds pathauto strongarm token redirect```

## Hooks
https://api.drupal.org/api/drupal/includes!module.inc/group/hooks/7.x

## Backup
```drush cc all && drush ard
drush cc all && drush sql-dump | gzip --stdout > $(date +\%Y-\%M-\%d-\%H-\%M-\%S).sql.gz```

## Import
```gunzip -c myfile.sql.gz | drush sqlc
drush sql-cli < ~/my-sql-dump-file-name.sql```

## Modules
```drush dl module
drush en module  -y
drush dis module
drush pm-uninstall
drush pml  --no-core
drush mb my_module menu cron --write --name="My module"```

## Users
```drush ucrt username --mail="email@example.com" --password="password"
drush ucan username
drush upwd admin --password="new_pass"
drush uli```

## Updates
```drush up -n | grep available
drush up drupal
drush up views
drush upc views
drush updb views```

## Mysql:
```drush sql-cli
drush sql-cli < dump.sql```

## Content:
```drush generate-content 20 --types=page```

## Features:
```drush fu
drush fr```

## Other:
```drush vget variable_name
drush ws     (watchdog show)
drush cron```

## Password reset (if no drush)
index.php modification, add after `DRUPAL BOOTSTRAP`
```php
require('includes/password.inc');
echo user_hash_password('mypassword'); 
die();```

Or `scripts/password-hash.sh` modification
```#!c:/xampp/php/php.exe```

then call:
```./scripts/password-hash.sh mypassword```

## Workbench Moderation Add States to old content:
https://www.drupal.org/node/2085915

```drush wm-addstates simple_page
drush wm-addstates basic_page
drush wm-addstates bvd_stats
drush wm-addstates bvd_external_news
drush wm-addstates bvd_infographic
drush wm-addstates bvd_video
drush wm-addstates bvd_award
drush wm-addstates bvd_news```
