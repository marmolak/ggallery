with import <nixpkgs> { };

mkShell {

  nativeBuildInputs = [
    perlPackages.ImageExifTool
    perl
    imagemagick
    zip
    fbida
  ];

}
