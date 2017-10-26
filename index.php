<?php

/**
 * @defgroup plugins_themes_lu_site luSiteTheme plugin
 */
 
/**
 * @file plugins/themes/lu_site_theme/index.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_lu_site
 * @brief Wrapper for luSiteTheme child theme plugin.
 *
 */
 
require_once('LuSiteThemePlugin.inc.php');

return new LuSiteThemePlugin();
?>