<?php
// * 2011-10-31  modified by Taggic to get is work with current DokuWiki (Rincewind)
/**
 * Russian language file for the Bliki Plugin
 *
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author     Aleksandr Selivanov <alexgearbox@yandex.ru>
 */
$conf['plugin']['bliki']['structure'] = 'flat'; // Structure to use when storing posts; [flat | deep]
$conf['plugin']['bliki']['offset'] = 0; // Number of hours to offset new post times from your server (eg -3 if you post from a timezone 3 hours behind your server)
$conf['plugin']['bliki']['numposts'] = 10; // Number of posts to show on each page of a blog
$conf['plugin']['bliki']['dateheader'] = '**d.m.Y**'; // Format for date header/separator (passed to date(), escape special flags!)
$conf['plugin']['bliki']['datefooter'] = 'd.m.Y H:i'; // Format for the footer datestamp (includes hours/minutes) (passed to date(), escape special flags!)
$conf['plugin']['bliki']['footer'] = ' \\\\ <sub>Размещено @ {timestamp} --- [[{permalink}|Постоянная ссылка]]<ifauth @admin> --- [[{edit}|Редактировать]]</ifauth></sub> \\\\ '; // use {timestamp}, {permalink} and {edit} to link to special variables.
$conf['plugin']['bliki']['newlabel'] = 'Новая запись'; // Label for the new post button/link
$conf['plugin']['bliki']['olderlabel'] = 'Предыдущие записи ›;'; // Link to older posts
$conf['plugin']['bliki']['newerlabel'] = '‹ Новые записи'; // Link to newer posts