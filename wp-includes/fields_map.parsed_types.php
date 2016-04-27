<?php return array (
  '' => 
  array (
  ),
  'wp_duplicator_packages' => 
  array (
    'id			BIGINT(20)' => 
    array (
      'type' => 'UNSIGNED',
    ),
  ),
  'wp_ninja_forms_fav_fields' => 
  array (
    'data' => 
    array (
      'type' => 'nvarchar',
    ),
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'name' => 
    array (
      'type' => 'nvarchar',
    ),
    'order' => 
    array (
      'type' => 'int',
    ),
    'row_type' => 
    array (
      'type' => 'int',
    ),
    'type' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_ninja_forms_fields' => 
  array (
    'data' => 
    array (
      'type' => 'nvarchar',
    ),
    'def_id' => 
    array (
      'type' => 'int',
    ),
    'fav_id' => 
    array (
      'type' => 'int',
    ),
    'form_id' => 
    array (
      'type' => 'int',
    ),
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'order' => 
    array (
      'type' => 'int',
    ),
    'type' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_nf_objectmeta' => 
  array (
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'meta_key' => 
    array (
      'type' => 'nvarchar',
    ),
    'meta_value' => 
    array (
      'type' => 'nvarchar',
    ),
    'object_id' => 
    array (
      'type' => 'int',
    ),
  ),
  'wp_nf_objects' => 
  array (
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'type' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_nf_relationships' => 
  array (
    'child_id' => 
    array (
      'type' => 'int',
    ),
    'child_type' => 
    array (
      'type' => 'nvarchar',
    ),
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'parent_id' => 
    array (
      'type' => 'int',
    ),
    'parent_type' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_PO_plugins' => 
  array (
    'children' => 
    array (
      'type' => 'int',
    ),
    'disabled_groups' => 
    array (
      'type' => 'nvarchar',
    ),
    'disabled_mobile_groups' => 
    array (
      'type' => 'nvarchar',
    ),
    'disabled_mobile_plugins' => 
    array (
      'type' => 'nvarchar',
    ),
    'disabled_plugins' => 
    array (
      'type' => 'nvarchar',
    ),
    'enabled_groups' => 
    array (
      'type' => 'nvarchar',
    ),
    'enabled_mobile_groups' => 
    array (
      'type' => 'nvarchar',
    ),
    'enabled_mobile_plugins' => 
    array (
      'type' => 'nvarchar',
    ),
    'enabled_plugins' => 
    array (
      'type' => 'nvarchar',
    ),
    'permalink' => 
    array (
      'type' => 'nvarchar',
    ),
    'permalink_hash' => 
    array (
      'type' => 'nvarchar',
    ),
    'permalink_hash_args' => 
    array (
      'type' => 'nvarchar',
    ),
    'post_id' => 
    array (
      'type' => 'int',
    ),
    'post_type' => 
    array (
      'type' => 'nvarchar',
    ),
    'pt_override' => 
    array (
      'type' => 'int',
    ),
    'secure' => 
    array (
      'type' => 'int',
    ),
    'status' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_relevanssi' => 
  array (
    'author' => 
    array (
      'type' => 'int',
    ),
    'category' => 
    array (
      'type' => 'int',
    ),
    'comment' => 
    array (
      'type' => 'int',
    ),
    'content' => 
    array (
      'type' => 'int',
    ),
    'customfield' => 
    array (
      'type' => 'int',
    ),
    'customfield_detail' => 
    array (
      'type' => 'nvarchar',
    ),
    'doc' => 
    array (
      'type' => 'int',
    ),
    'excerpt' => 
    array (
      'type' => 'int',
    ),
    'item' => 
    array (
      'type' => 'int',
    ),
    'link' => 
    array (
      'type' => 'int',
    ),
    'mysqlcolumn' => 
    array (
      'type' => 'int',
    ),
    'mysqlcolumn_detail' => 
    array (
      'type' => 'nvarchar',
    ),
    'tag' => 
    array (
      'type' => 'int',
    ),
    'taxonomy' => 
    array (
      'type' => 'int',
    ),
    'taxonomy_detail' => 
    array (
      'type' => 'nvarchar',
    ),
    'term' => 
    array (
      'type' => 'nvarchar',
    ),
    'term_reverse' => 
    array (
      'type' => 'nvarchar',
    ),
    'title' => 
    array (
      'type' => 'int',
    ),
    'type' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_relevanssi_stopwords' => 
  array (
    'stopword' => 
    array (
      'type' => 'nvarchar',
    ),
  ),
  'wp_relevanssi_log' => 
  array (
    'hits' => 
    array (
      'type' => 'int',
    ),
    'id' => 
    array (
      'type' => 'int',
    ),
    'ip' => 
    array (
      'type' => 'nvarchar',
    ),
    'query' => 
    array (
      'type' => 'nvarchar',
    ),
    'time' => 
    array (
      'type' => 'timestamp',
    ),
    'user_id' => 
    array (
      'type' => 'int',
    ),
  ),
  'wp_wonderplugin_tabs' => 
  array (
    'authorid' => 
    array (
      'type' => 'nvarchar',
    ),
    'data' => 
    array (
      'type' => 'MEDIUMTEXT',
    ),
    'id' => 
    array (
      'type' => 'primary_id',
    ),
    'name' => 
    array (
      'type' => 'nvarchar',
    ),
    'time' => 
    array (
      'type' => 'date',
    ),
  ),
)
 ?>