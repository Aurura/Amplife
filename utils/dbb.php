<?php

/**
 * Created by PhpStorm.
 * User: altoria
 * Date: 8/5/15
 * Time: 10:23 PM
 */
class dbb
{

    private $exist = false;

    function do_connect() {

        $filename = 'config/config.json';
        $handle = fopen("$filename", "r");
        $contents = fread($handle, filesize ($filename));
        fclose($handle);

        $obj = json_decode($contents);


        /*
        $obj->database="localhost"; //数据库服务器名称
        $obj->username="root"; // 连接数据库用户名
        $obj->password="QWERTY"; // 连接数据库密码
        */

        $GLOBALS['conn']=mysql_connect($obj->database, $obj->username,
            $obj->passcode);

        if(!$GLOBALS['conn']) {
            $this->exist = false;

            header("location: ../error/err.php");
            exit;

        } else $this->exist = true;
    }

    function do_query($query) {

        if(!$GLOBALS['conn']) $this->do_connect();
        mysql_select_db("amplife_db", $GLOBALS['conn']);
        $result = mysql_query($query);

        return $result;

    }


    function dbb() {
        global $PREV_LEN;
        global $conn;
        $PREV_LEN = 100;
        $this->do_connect();
    }

    function getHTitle() {
        $ans = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_info` WHERE info_key='site_title';"));
        return $ans['info_value'];
    }

    /**
     * @return string
     */
    function getSubtitle() {
        $ans = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_info` WHERE info_key='site_subtitle'"));
        return $ans['info_value'];
    }

    function getTitle($t) {
        $result = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_data` WHERE id='" . mysql_real_escape_string($t) . "'"));
        return $result['article_title'];
    }

    function getAuthor($t) {
        $result = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_data` WHERE id='" . mysql_real_escape_string($t) . "'"));
        return $result['article_author'];
    }

    function getCount() {
        $ans = mysql_num_rows($this->do_query("SELECT count(*) FROM `amplife_data`;"));
        return $ans;
    }

    function getContent($t) {
        $result = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_data` WHERE id='" . mysql_real_escape_string($t) . "'"));
        return $result['article_content'];
    }

    function getContentPreview($t) {
        $str_orig = $this->getContent($t);
        return str_split($str_orig, $this->getPreviewLength())[0];
    }

    function getBackgroundLocation($t) {
        $result = mysql_fetch_array($this->do_query("SELECT * FROM `amplife_data` WHERE id='" . mysql_real_escape_string($t) . "'"));
        return $result['article_bglocate'];
    }

    function getPreviewLength() {
        return $GLOBALS['PREV_LEN'];
    }

    function isExist() {
        return $this->exist;
    }
}