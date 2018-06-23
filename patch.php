<?php
	print("<PRE>");
	passthru("/bin/bash PATCH_SUPEE-8788.sh");
	print("</PRE>");
	echo "Done";
?>