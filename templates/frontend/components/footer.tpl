{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
		
	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
			     {if $currentContext}
			     	 {$sidebarCode}
			     {else}
				<div class="lu_logo_sidebar pkp_block">
		     	     	     {if $currentLocale == 'sv_SE'}
		     	  	     <a href="https://www.lu.se/">
		     	     	     	<img alt="Lunds universitet" src="{$baseUrl}/plugins/themes/lu_site_theme/images/lu_logo-portrait-sv.png" />
		     	  	     </a>
			  	     {else}
					<a href="https://www.lunduniversity.lu.se/">
		     	     	     	   <img alt="Lund University" src="{$baseUrl}/plugins/themes/lu_site_theme/images/lu_logo-portrait-en.png" />
		     	  	  	</a>
			  	     {/if}
			     	</div>
				{$sidebarCode}
			     {/if}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div id="pkp_content_footer" class="pkp_structure_footer_wrapper" role="contentinfo">

	<div class="pkp_structure_footer">

		{if $pageFooter}
			<div class="pkp_footer_content">
				{$pageFooter}
			</div>
		{/if}
		<div class="branding_footer">
		     <div class="lu_brand_footer" role="complementary">
		     	  {if $currentLocale == 'sv_SE'}
		     	  <a href="https://www.lu.se/">
		     	     <img alt="Lunds universitet" src="{$baseUrl}/plugins/themes/lu_site_theme/images/lu_logo-portrait-sv.png" />
		     	  </a>
			  {else}
		     	  <a href="https://www.lunduniversity.lu.se/">
		     	     <img alt="Lund University" src="{$baseUrl}/plugins/themes/lu_site_theme/images/lu_logo-portrait-en.png" />
		     	  </a>
			  {/if}
		     </div>	  
		     <div class="pkp_brand_footer" role="complementary">
		     	  <div class="alignwrapper">
			       <a href="{url page="about" op="aboutThisPublishingSystem"}">
				  <img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">
			       </a>	  
			  </div>
		     </div>
		</div>

	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
