<?php 
/**
 * @package     Vertex Framework
 * @author		Shape 5 http://www.shape5.com
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 */

$vertex_admin_path = $_GET['path'];
$template_path = $_GET['template_path'];
$template_name = $_GET['template_name'];
$script = '';

echo "var vertex_ajax_url = '$vertex_admin_path';";
echo "var img_path = '$vertex_admin_path/df-images';";
echo "var json_path = '$template_path/vertex.json';";
echo "var template_name = '$template_name';";

$script .= require('js/jquery.vertexAdmin.core.min.js');
$script .= require('js/jquery.vertexAdmin.min.js');
echo $script;

?>