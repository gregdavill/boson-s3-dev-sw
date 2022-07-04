buildroot external tree
=======================

This directory contains a buildroot external tree for the boson-s3
Clone this repo next to your buildroot tree.

Use this tree by specifying it in the buildroot build command:

`make BR2_EXTERNAL=../boson-s3-dev-sw/buildroot/ boson_s3_dev_defconfig`
