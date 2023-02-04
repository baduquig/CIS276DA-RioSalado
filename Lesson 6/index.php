<?php
/*********************************
 * Gabe Baduqui
 * CIS276
 * Lesson 6 Project
 * Question 7 - Line 23
*********************************/
# Grade-Keeping Project home page

require_once "sampdb_pdo.php";

$title = "Grade-Keeping Project";
html_begin ($title, $title);
?>

<p>
<a href="/cgi-bin/score_browse.pl">View</a> test and quiz scores
</p>
<p>
<a href="score_entry.php">Enter or edit</a> test and quiz scores
</p>
<!-- Lesson 6 Project #7 -->
<p>
<a href="list_student_scores.php">List</a> all student test and quiz scores
</p> 
<!-- Lesson 6 Project #7 -->

<?php
html_end ();
?>
