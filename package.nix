{ stdenv }:

stdenv.mkDerivation {
    pname = "seamless-login";
    version = "1.0";

    src =./src;
    
    buildPhase = ''
        $CC seamless-login.c -o seamless-login -Wno-unused-result
    '';

    installPhase = ''
        mkdir -p $out/bin
        cp seamless-login $out/bin/seamless-login
    '';
}

