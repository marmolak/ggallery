fgallery 1.9: 2022-
--------------------------

* A new flag `-k` allows to include the original files as-is, disabling
  all (lossless) transformations. Thanks to Rainer Müller.
* Handle gray-scale source images without failing during conversion.
* Handle UTF8 characters and whitespace in command-line arguments.
* Handle abnormal ``pngcrush`` failures with bad sRGB profiles.
* Improve default locale handling for text captions.
* Speed-up the gallery generation by avoiding copies when possible.
* Fix an error potentially occurring when the source gallery includes
  extra (non-image) files. Thanks to Alex Schroeder.
* Fix a typo in the man page thanks to Robin Paulson.
* Do not fail when producing the zip archive on galleries that have a
  lot of images or long file names.
* Update ``fcaption`` to Python3 and support both PyQt6 or PyQt5.
  Thanks to Chris Drexler for the Qt5 support.
* ``fcaption`` now sorts the input images by the file name, matching the
  default ``fgallery`` order. Thanks to Tom Conlin.
* Support ``7zz`` (from the new `7zip` package) in addition to ``7za``
  for archive generation.
* A new simple Makefile is provided to install ``fgallery`` and data
  files into an appropriate prefix.


fgallery 1.8.2: 2016-05-25
--------------------------

* Allow to generate a gallery directly on filesystems without hard-links.
* Fix generation failure on BSD systems (use a common set of "cp" arguments).
* Handle more malformed/missing EXIF timestamps.
* Use ``Cpanel::JSON::XS`` instead of ``JSON::XS`` (fixing errors in recent
  unsupported combinations of Perl / JSON::XS and threads).
* New ``fgallery`` man page provided by Guus Sliepen.


fgallery 1.8.1: 2016-02-02
--------------------------

* Fixed txt/xmp caption extraction for filenames with special characters.
* Fixed unicode handling in xmp/exif captions.


fgallery 1.8: 2016-01-14
------------------------

* Handle bogus whitespace in EXIF timestamps.
* Ignore hidden/invalid files instead of failing.
* Support ``tificc2`` as an alias to ``tificc`` (for Fedora).
* Avoid calling ``tificc`` for images already in sRGB.
* Load thumbnails on-demand for faster loading of large galleries.
* Extract and visualize image captions.
* Added ``utils/fcaption`` to edit image captions.


fgallery 1.7: 2014-09-05
------------------------

* Improved support for IE8.
* With Firefox the gallery can now be viewed directly without an HTTP server.
* Fixed crash when reading invalid EXIF timestamps.
* Fixed crash when reading read-only images.
* Fixed invalid check with newer versions of ImageMagick.


fgallery 1.6: 2014-04-17
------------------------

* Do not produce warnings when reading files without suffix.
* Strip EXIF metadata from image previews and thumbnails.
* We now require the ``Image::ExifTool`` perl module to extract EXIF
  information (``libimage-exiftool-perl``).
* Preview/thumbnail images are now converted to sRGB colorspace by default
  (``liblcms2-utils`` required) for improved color appearance across devices.
* Fixed mixing/sorting of images without EXIF data.
* A customizable URL (``--index``) can be specified on the command line to put
  a back-link in the gallery header.
* Reduced the payload size.


fgallery 1.5: 2014-03-03
------------------------

* Allow to reverse the album order (`-r`).
* Fixed crash when reading read-only images.
* Fixed crash when the input directory contains spaces.
* Fixed time sorting.


fgallery 1.4: 2014-01-28
------------------------

* Manual copying of the template directory is no longer required.
* Fixed incorrect thumbnail size for rotated JPGs.
* Fixed encoding of the album name.


fgallery 1.3: 2014-01-05
------------------------

* Improved browser behavior of the `back` button.
* Fixed incorrect thumbnail stretch for certain image ratios.
* Fixed empty thumbnail list in old browsers without ``devicePixelRatio``.
* Fixed incorrect usage of ``pngcrush``, resulting in stray PNG output files.
* Gallery generation speedup with parallelism/multi-core support (`-j`).
* Can use ``p7zip`` when installed for faster compression.
* Perl dependency on ``Date::Parse`` removed.
* Minor/cosmetic improvements.


fgallery 1.2: 2013-11-30
------------------------

* Faster loading of large galleries.
* Automatic thumbnail scaling on small screens.
* Improved support for mobile browsers.
* Swiping support.


fgallery 1.1: 2013-10-21
------------------------

* Degrades more gracefully on IE<10.
* Gallery generation speedup.
* Improved handling of UTF-8/special file names.
* Clicking on the main image shows the full image directly (if present).
* Adapts to the current screen layout automatically (horizontal/vertical layout).
* Supports face detection for improved thumbnail generation.
* JPEG/PNG optimization as an optional post-processing step.
* Minor/cosmetic improvements.
