with import <nixpkgs> { };

mkShell {

  nativeBuildInputs = [
    perlPackages.ImageExifTool
    perlPackages.FileFindRule
    perl
    imagemagick
    zip
    fbida
    minify
  ];

}
