{ pkgs }:
with pkgs;
[
  # play-store app
  {
    package = fetchs3Archive rec {
      pname = "play_store";
      s3url = "s3://bs-mobile/android/play_store/play_store_${version}.tar.gz";
      sha256 = "055kmhw0frmiwyjn22fi4yg0b3xx48s8w9mss10mpms5w8x150ww";
      version = "20.0.15";
    };
    destination = "/usr/local/.browserstack/deps/play_store/v20.0.15";
  }

  {
    package = fetchs3Archive rec {
      pname = "play_store";
      s3url = "s3://bs-mobile/android/play_store/play_store_${version}.tar.gz";
      sha256 = "1zfynmhm8j9ri74w25kac49dr4ndfk8l70w9majpaj1n107mnp4a";
      version = "37.3.29";
    };
    destination = "/usr/local/.browserstack/deps/play_store/v37.3.29";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_store";
      s3url = "s3://bs-mobile/android/play_store/play_store_${version}.tar.gz";
      sha256 = "0v1i6n06znysmpzhgyk3k688i2y6mddsrfra2ncxv9y98xrwbpkn";
      version = "43.0.18.1";
    };
    destination = "/usr/local/.browserstack/deps/play_store/v43.0.18";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_store";
      s3url = "s3://bs-mobile/android/play_store/play_store_${version}.tar.gz";
      sha256 = "1ahbq102v5qpbpcf4am8cxdqmqrdmd8aqh3m6gc3kqmb6zym6gp6";
      version = "47.7.19";
    };
    destination = "/usr/local/.browserstack/deps/play_store/v47.7.19";
  }

  # browserstack-reverse-tether app
  {
    package = fetchs3Archive rec {
    pname = "bstack_reverse_tether";
    s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
    sha256 = "06lfkm47a7icmc28k3a8b961iqgnp9h9b5m624abi6h3fywrsqrj";
    version = "5";
    };
    destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v5";
  }

   # browserstack-reverse-tether app
   {
     package = fetchs3Archive rec {
     pname = "bstack_reverse_tether";
     s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
     sha256 = "1nwbq27xs1xnnh3nm26jxng17gy17647np7xdigcwira8r9w6dsp";
     version = "6";
     };
     destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v6";
   }
   {
     package = fetchs3Archive rec {
     pname = "bstack_reverse_tether";
     s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
     sha256 = "0fpbfgnqf3xy6bl6yf5sdg49071kyngr2f1n5d4cx4ny0r5pwmfp";
     version = "7";
     };
     destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v7";
   }
   {
     package = fetchs3Archive rec {
     pname = "bstack_reverse_tether";
     s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
     sha256 = "0mzl1ifckkmjh4b13p9mss5ayr6xj6p0wb7fs4qi8g6rbd0g3ias";
     version = "8";
     };
     destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v8";
   }
   {
     package = fetchs3Archive rec {
     pname = "bstack_reverse_tether";
     s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
     sha256 = "0404p0yd9912vmakn829jyjczvgs7b25x3kjs6qvpdh4f05sgqyn";
     version = "9";
     };
     destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v9";
   }
      {
     package = fetchs3Archive rec {
     pname = "bstack_reverse_tether";
     s3url = "s3://bs-mobile/android/bstack_reverse_tether/bstack_reverse_tether_${version}.tar.gz";
     sha256 = "0krqkkpqip4c8fx4hkhps3h8rk9y74wq5pp0s49dxd96sg62bzf6";
     version = "10";
     };
     destination = "/usr/local/.browserstack/deps/bstack_reverse_tether/v10";
   }


  # browserstack-reverse-tether forwarder binary
  {
    package = fetchs3Archive rec {
      pname = "bstack_reverse_tether_forwarder";
      s3url = "s3://bs-mobile/android/bstack_reverse_tether_forwarder/bstack_reverse_tether_forwarder_${version}.tar.gz";
      sha256 = "1139yg4rs31v4s4bc8zg591nkciq334faijggqg5zgbzwbn7a51b";
      version = "5";
    };
    destination = "/usr/local/.browserstack/deps/bstack_reverse_tether_forwarder/v5";
  }


  # browserstack-reverse-tether forwarder binary (transparent proxy)
  {
    package = fetchs3Archive rec {
      pname = "bstack_reverse_tether_forwarder";
      s3url = "s3://bs-mobile/android/bstack_reverse_tether_forwarder/bstack_reverse_tether_forwarder_${version}.tar.gz";
      sha256 = "0ir4dk2fkv3wl3jszqpd02w85gwmcr0qm25pip6kvb0v7zkrn071";
      version = "7";
    };
    destination = "/usr/local/.browserstack/deps/bstack_reverse_tether_forwarder/v7";
  }

  # vpn reverse tether app for android version > 12
  {
    package = fetchs3Archive rec {
      pname = "vpn_reverse_tether";
      s3url = "s3://bs-mobile/android/vpn_reverse_tether/vpn_reverse_tether_${version}_12.tar.gz";
      sha256 = "04550mmh0k5r49r728pnfdxqj789wpbznfvzk9kxj8vd6rkg3piy";
      version = "7";
    };
    destination = "/usr/local/.browserstack/deps/vpn_reverse_tether_app/v7_12";
  }

  # vpn reverse tether app
  {
    package = fetchs3Archive rec {
      pname = "vpn_reverse_tether";
      s3url = "s3://bs-mobile/android/vpn_reverse_tether/vpn_reverse_tether_${version}.tar.gz";
      sha256 = "034kp6r17y1n1jn9qh164zjicdvclfmbih16j0kqpiap5ykrb485";
      version = "7";
    };
    destination = "/usr/local/.browserstack/deps/vpn_reverse_tether_app/v7";
  }

  # vpn reverse tether app for android version > 12
  {
    package = fetchs3Archive rec {
      pname = "vpn_reverse_tether";
      s3url = "s3://bs-mobile/android/vpn_reverse_tether/vpn_reverse_tether_${version}_12.tar.gz";
      sha256 = "0pw8diik4k7sd0qrdsvq73mnw7ajqb6jplfyyb5ggx0wza7nky1h";
      version = "9";
    };
    destination = "/usr/local/.browserstack/deps/vpn_reverse_tether_app/v9_12";
  }

  # vpn reverse tether app
  {
    package = fetchs3Archive rec {
      pname = "vpn_reverse_tether";
      s3url = "s3://bs-mobile/android/vpn_reverse_tether/vpn_reverse_tether_${version}.tar.gz";
      sha256 = "0yaxcf11h7s53vaxirmdzak60g27k4gcnjf6q2zsqyp3c1pn1z08";
      version = "9";
    };
    destination = "/usr/local/.browserstack/deps/vpn_reverse_tether_app/v9";
  }

  # gnirehtet
  {
    package = fetchs3Archive rec {
      pname = "gnirehtet";
      s3url = "s3://bs-mobile/android/gnirehtet/gnirehtet_${version}.tar.gz";
      sha256 = "1kzqbv9vmxcyv8awrccf5knp6j19dqcmbpn3y9j947dc3ksp109f";
      version = "8";
    };
    destination = "/usr/local/.browserstack/deps/gnirehtet/v8";
  }
  {
    package = fetchs3Archive rec {
      pname = "gnirehtet";
      s3url = "s3://bs-mobile/android/gnirehtet/gnirehtet_${version}.tar.gz";
      sha256 = "0j7zckw5avzc6aygp0v07alvlfdyg1hk6h7l874dznphgdcxhp6m";
      version = "9";
    };
    destination = "/usr/local/.browserstack/deps/gnirehtet/v9";
  }

  # browserstack app
  {
    package = fetchs3Archive rec {
      pname = "browserstack";
      s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
      sha256 = "0bm2kx5ymrdwv50012zv1fqlnqxf3s0c8a6nndmi9b58l5wyx604";
      version = "33";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_app/v33";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack";
      s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
      sha256 = "0prqpvgmvzqkk651j67s78mh46ij64rlnf1xjrjl7pnjzvckc5a6";
      version = "34";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_app/v34";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack";
      s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
      sha256 = "0gjs85rjbafh2lvkb7c8kz8z66q73x057i43azz8gs30a9vd4w95";
      version = "35";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_app/v35";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack";
      s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
      sha256 = "12z23maljgv6rfrjv697l0m0w91swxsc7rjcymz7p3n50hd1nba2";
      version = "36";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_app/v36";
  }
  {
     package = fetchs3Archive rec {
       pname = "browserstack";
       s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
       sha256 = "02lki267g14x09anrbjlc8rhnlf4glmclm79bz30c33fsva5mshj";
       version = "37";
     };
     destination = "/usr/local/.browserstack/deps/browserstack_app/v37";
  }
  {
     package = fetchs3Archive rec {
       pname = "browserstack";
       s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
       sha256 = "1rkkmvmr0fc6lfi146jnnpfcbdhw8rd4fqsdz61mvbc1dfb8rcyr";
       version = "38";
     };
     destination = "/usr/local/.browserstack/deps/browserstack_app/v38";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0lzqhpsl3x0wkw50jddasvgpfymfym8wpqdzgw9xcc7d8cdqr7l1";
        version = "39";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v39";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "048riw60af27kgc8ljdklv77xa1165ixnjdm9bpws57lnm3l5hg2";
        version = "40";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v40";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "05i8lrwcgg3ddflld85r9gv6a065ylzc87r6m93p82ii0dhvph2x";
        version = "41";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v41";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0rvfyvz2ynvaddvgi4rh40pn3f10d9w5x9wh8h9fdxpajnmp5ms5";
        version = "42";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v42";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0lw77p4bm0ilrnb0z144x3vva3wsrglhr92s2aymgp5kylw738h8";
        version = "43";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v43";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0shaa5dl4pkxy6dnm3qq6sfgimkc23kghf9m97ghxkf9j654j4an";
        version = "44";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v44";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "1jb7lw7bw3h1dl0bhfyqv05jzc8x8dx6pcn2plbkkcrngqlxhq95";
        version = "45";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v45";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "1kzq4zyrzmfdjwh0f70ba7kh5fswpvhk6v36dy85yj4c8r5kl03k";
        version = "46";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v46";
    }

    {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "1jvjjw2yibb8cjhpgw93fi0bvm3mk10n67hjrrr6kbkbyhmirl1v";
        version = "47";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v47";
    }

    {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0czdkyhvgsxjjmyisa4pxy6mdpmasg6bsgazq2qv75jjcny9pbb9";
        version = "48";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v48";
    }

    {
      package = fetchs3Archive rec {
        pname = "browserstack";
        s3url = "s3://bs-mobile/android/browserstack/browserstack_${version}.tar.gz";
        sha256 = "0z58pxi2s7rkpf60izl44nny1wips0l4fynmy32zdb7yk204wmzk";
        version = "49";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_app/v49";
    }

  # chrome
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "4d60ab38fdb7ef42004c4dc68f6f3722a6051ec20573670deceda79b72649469";
      version = "139";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v139";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "146lzy3jdjcgb2gb2nww03vsi28c5fqazyf085kf0gnrmrc86wn1";
      version = "80";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v80";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1f8cv06xy92a4qrvnawmlp7n68n8n9jrgzj918xi70fh3iyvjk25";
      version = "95";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v95";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "06rrw70kv8137k13x72kwzfhl3xdcjfdg44ndgjvc2ghkdzjxf1q";
      version = "96";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v96";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "13ppmrizqfndvfw99psl59lsfd57rq6zma489q3q92xppfks0gfj";
      version = "99";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v99";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "174sf6j2alnqi60bg5rmjdggglh6x5pivqyrlvjr71pj25nl6dq5";
      version = "100";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v100";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "19pv4z931i69lhm9h4bki6j3bbwglagyc1zykcrgqiscsh4q62k2";
      version = "103";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v103";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "0d82w2b3gs9h8xwdyry93vcacyghjnwwyb4hzifx2lcq8f683v93";
      version = "104";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v104";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1jncjiiq2ciyfvf4ylnsl1j9v1zjskapqmd8h9cpwpqli7akv9kr";
      version = "105";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v105";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1a2clfcjn9hbbpvr9j599syr6va6ngn97q5vq73q8d7vz7xvcjch";
      version = "108";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v108";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "051scf2y0jg739pc418i9w0q6z2izpn8m5g4v69cnq8ga8iqjvnj";
      version = "111";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v111";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1pkkiid1rcg9mck272x3ccr51n9zqf3jd4ky88ak5l1hi7cgnisg";
      version = "114";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v114";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1m0rq9q2vi0fcwfsvnp41ph7jpkf6nn17gdgis9n2sm3pf4a3q81";
      version = "117";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v117";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "0kl287ss9wc82170pfpc7zxfggy22w89k2hn7xr7rw9ggsxy3y5a";
      version = "120";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v120";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1dflip2jrdllci0bb0nbk45j6sw977pfaq8z7za0fn6idv200ln5";
      version = "123";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v123";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}_2.tar.gz";
      sha256 = "1qq189azfwnsw0sh464b42bsmimipf6i0ki20046a7wdh8557ima";
      version = "127";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v127";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1p7d9g9z91lz80hwkgr6ja9ipz6z3r019j5ihhpnd16imiivnq89";
      version = "128";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v128";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "0gl03gwvnm3ijph7d1lzxnf3j2swa6ca12lf46n7mr7zmnfpw6mx";
      version = "131";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v131";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "1ivlf6vh1601r05ci68cgpinwcpyj5ym46135aw3l4dfqxy1zgpk";
      version = "133";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v133";
  }
  {
    package = fetchs3Archive rec {
      pname = "chrome";
      s3url = "s3://bs-mobile/android/chrome/chrome_${version}.tar.gz";
      sha256 = "0k1j9drcy86djn28l8pyxpjc74wri6y9p6zsq9rjpc00jmgqkd8f";
      version = "135";
    };
    destination = "/usr/local/.browserstack/deps/chrome/v135";
  }

  # edge
  {
    package = fetchs3Archive rec {
      pname = "edge";
      s3url = "s3://bs-mobile/android/edge/edge_${version}.tar.gz";
      sha256 = "0100kv3995pjpqqx1ajc8c4cb86dghcycd8a49lglxkvgycjjp1w";
      version = "111";
    };
    destination = "/usr/local/.browserstack/deps/edge/v111";
  }
  {
    package = fetchs3Archive rec {
      pname = "edge";
      s3url = "s3://bs-mobile/android/edge/edge_${version}.tar.gz";
      sha256 = "0a89al7p5g6c67x583va045w2w0xda05p23lh106vfrqmwwlf6rj";
      version = "138";
    };
    destination = "/usr/local/.browserstack/deps/edge/v138";
  }

  # webview
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "a3df2151d1a493d6046edb3baf84d5b70d16d4fc5e9256dc7ec03bbae3b47131";
      version = "139";
    };
    destination = "/usr/local/.browserstack/deps/webview/v139";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0ili9ni1sj2q9cia13jazmyv782xq5frf1ca6r4pccnw7pp5ngvs";
      version = "95";
    };
    destination = "/usr/local/.browserstack/deps/webview/v95";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "191c5fccrxb2k1jq15mzfmq947nv9skypd3vplnbmn3qksxmwr4n";
      version = "96";
    };
    destination = "/usr/local/.browserstack/deps/webview/v96";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "1m2khcrw9001lqy1pywil0s6wmwjhz70hg96zg22chx66b5mncnc";
      version = "99";
    };
    destination = "/usr/local/.browserstack/deps/webview/v99";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "1i2zi5p0kac7h7mq4fw3qwjy02v546xsjvc828ib5swmkwjz6f07";
      version = "100";
    };
    destination = "/usr/local/.browserstack/deps/webview/v100";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "18z8q3cs88x3gksphq18vnr8kd41s1b0c9c33a170wwrpk02y95y";
      version = "103";
    };
    destination = "/usr/local/.browserstack/deps/webview/v103";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0xy2y4jvpyj1wsb9bi6zi2naq3piiz1g9q89kdpyqywgvy9nqfgw";
      version = "104";
    };
    destination = "/usr/local/.browserstack/deps/webview/v104";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "07hsdbvw8m7y64my6m5d5h4b0f9nmrqv0hafzvz4h06692z6wdap";
      version = "105";
    };
    destination = "/usr/local/.browserstack/deps/webview/v105";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0k2h9lz2g56bkm52zak1hz61g2zan27bcx215xxpqhyiibz29y4a";
      version = "108";
    };
    destination = "/usr/local/.browserstack/deps/webview/v108";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0nkvj0d1xi08270vdnaydg7hvzhgkgvl9d99xascmk669gfnvx39";
      version = "111";
    };
    destination = "/usr/local/.browserstack/deps/webview/v111";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "1p7h712aqlyxcbz23asbpqv9a74ilrij8kqg06q0r5l04zjcc97y";
      version = "114";
    };
    destination = "/usr/local/.browserstack/deps/webview/v114";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "00cz6p2bsvzy3fzylj6n3h292f4p7z4p5rbm682nni1i2gaxci7s";
      version = "117";
    };
    destination = "/usr/local/.browserstack/deps/webview/v117";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0zr11iklx33xnb0n3kb5ds7qhf93f86sad294786rsc68p2b0lfs";
      version = "120";
    };
    destination = "/usr/local/.browserstack/deps/webview/v120";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0rsbjqmrsjx09g8yijygsfkiyl925gk0cxkb7phc5vqjma9zxr34";
      version = "123";
    };
    destination = "/usr/local/.browserstack/deps/webview/v123";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}_3.tar.gz";
      sha256 = "0x52f2i8g0r2smvpglf1llmhpvbc1cricnlxb5i1rivz8smpsmcp";
      version = "127";
    };
    destination = "/usr/local/.browserstack/deps/webview/v127";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "16n7l1gh5gzr9x41di3ji36sww22x4ibipd3c5ab5ql8qd930d28";
      version = "128";
    };
    destination = "/usr/local/.browserstack/deps/webview/v128";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "01pb8pilvqppjzphcrik6b9kxvpwngiyqy896v3l9253z2bcjqk8";
      version = "131";
    };
    destination = "/usr/local/.browserstack/deps/webview/v131";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "0y53ny7gmm6c8wvmxjwrx77qjjw25qs4j90wqijy7yzcj70vjvnd";
      version = "133";
    };
    destination = "/usr/local/.browserstack/deps/webview/v133";
  }
  {
    package = fetchs3Archive rec {
      pname = "webview";
      s3url = "s3://bs-mobile/android/webview/webview_${version}.tar.gz";
      sha256 = "15db7jijb3a1k2xjsz484bk8irv264cwi3jnjs8zcj2rpls12ha3";
      version = "135";
    };
    destination = "/usr/local/.browserstack/deps/webview/v135";
  }

  # firefox
  {
    package = fetchs3Archive rec {
      pname = "firefox";
      s3url = "s3://bs-mobile/android/firefox/firefox_${version}.tar.gz";
      sha256 = "0kd4vbpv3wf354pxhvcgvrw57x0rg88lkpf5jcfa72qkjh5qn3ca";
      version = "139";
    };
    destination = "/usr/local/.browserstack/deps/firefox/v139";
  }

  # bs_screencap
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "1365wz4rb8zbdm4jiwd73rci1lwnzvsqwh2mzkivw81fkrs6sx7v";
      version = "30";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v30";
  }
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "0z17i1kw3z4nls38hdlkzzi6g1zy8x129kdydlz2dn9qbxs6y1zs";
      version = "29";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v29";
  }
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "151s8fqilh02kzvii9jzvmy46kc2i59mh668vx0afshjqfyxsid0";
      version = "28";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v28";
  }
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "11xr2mcvmb1s187k6kkbhl6pc1lpxbjjdw0mgz5ay6c099ni1qhp";
      version = "21";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v21";
  }
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "1qmsm7rz3vqxkjynzzarhka898bs3k108dzjczmkxiyi2bd3mkcj";
      version = "20";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v20";
  }
  {
    package = fetchs3Archive rec {
      pname = "bs_screencap";
      s3url = "s3://bs-mobile/android/bs_screencap/bs_screencap_${version}.tar.gz";
      sha256 = "139rnshbarfnqs9aisqw3brdrqacbrrp0ra9s23cj62hq6598095";
      version = "16";
    };
    destination = "/usr/local/.browserstack/deps/bs_screencap/v16";
  }

  # play service
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "006gjqhmys0xmmshk1bjarxz27pmd8qxvjzvvkmbg29d7i80yymb";
      version = "22.06.15";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v22.06.15";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "1k8ka0mrid2dd9i6abmd1z4f8pgr6p2ydkxf4hn11jfr5jk9prnl";
      version = "22.12.15";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v22.12.15";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "02f58sw426vxvsq89sjnasyxn38005zh2qnkvmxyplwz2rx9my65";
      version = "22.42.12";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v22.42.12";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "1yazp4ik7yxsc34yjav30djl6plkax7l3w3vqmi7s2irska7rgkw";
      version = "23.25.16";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v23.25.16";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "0cj3cfcfwz8fxi7djn3yi2xsygr1qdgp4wnv31wvvk6q00fbxz5g";
      version = "23.41.13";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v23.41.13";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "9e4ce9796ac757f276ca51579ad803ec59cd291fbd029b37f1c8b5bd26ae09df";
      version = "24.15.18";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v24.15.18";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "17kap5dszcfm54zx7sc678f4nwfcmnc58v9rn72ccjfg59aqpb3d";
      version = "24.39.34";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v24.39.34";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "1v1p19p4dq49pypp2daj9alr04kxr9d47d76pp0jqk1f3lr44q2j";
      version = "25.07.61";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v25.07.61";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "0wl6ifflrq8rwn9mial2ka69ps1i5vzzgisxz2fv1qyd4vjkg700";
      version = "25.08.32";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v25.08.32";
  }
  {
    package = fetchs3Archive rec {
      pname = "play_services";
      s3url = "s3://bs-mobile/android/play_services/play_services_${version}.tar.gz";
      sha256 = "0ndq8lrm7mawsjnzjk63ms888gfl2d57k8f3kwi9ndammnlk1rdw";
      version = "25.34.34";
    };
    destination = "/usr/local/.browserstack/deps/play_services/v25.34.34";
  }

  # orchestrator apps
  {
    package = fetchs3Archive rec {
      pname = "test_orchestrator";
      s3url = "s3://bs-mobile/android/test_orchestrator/orchestrator-${version}.tar.gz";
      sha256 = "03r4l84akps0dhbwarnksqpbgryjmgdpxndi3ywfgx1pwzbj4ncm";
      version = "1.4.1";
    };
    destination = "/usr/local/.browserstack/deps/test_orchestrator_app/v1.4.1";
  }
  {
    package = fetchs3Archive rec {
      pname = "test_services";
      s3url = "s3://bs-mobile/android/test_services/test-services-${version}.tar.gz";
      sha256 = "04xk7h95xmc7s7c7j8x1sbc5g4v5c2277il562hgyzng1380iaii";
      version = "1.4.1";
    };
    destination = "/usr/local/.browserstack/deps/test_services_app/v1.4.1";
  }

  # samsung browser
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "0afzdzy0bajik5m0n9a46v4mc38k9akscbw62mx670k194dcdyr0";
      version = "28";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v28";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "06g7x0n0n207sz45y24fymygvv019fdyybgmz5l84rqjj2hd9fay";
      version = "9";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v9";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "16slf0qc5grvf0ybba5cxb88cyyjiiymrwms29yzdzglfnnlsiy4";
      version = "16";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v16";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "1679kcx14diikadcbzk83380304lr0az3vrw8v8c2h6lp7pbp8qm";
      version = "17";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v17";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "149zw7nl1hbvfxabd5lgv1xi3z7s8j9852c0rr9rdzd5w8crsyhn";
      version = "19";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v19";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}_1.tar.gz";
      sha256 = "082aqyrci0sqjibp6q6qz0zvg0s7fcw4jwakphqgxmqx29a8kcnc";
      version = "19";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v19_1";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "1klyphlxzaj7zh33a4651gndafyz64fwi5bnzkgixzg5ihnamira";
      version = "21";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v21";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}_1.tar.gz";
      sha256 = "0zgyh6g920silrc5wj11r653qkxs4bgyix8qd7wi1awbi7fs3y3s";
      version = "21";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v21_1";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "0gh2546v0mr4vgbk2x6nxzzfll4gvr8h7pvfaphv26ax1q4bhc9i";
      version = "23";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v23";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}_1.tar.gz";
      sha256 = "1y320jbw79z0pf326wcsn77y42y99s0qb1i68c0p33mijv5p956h";
      version = "23";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v23_1";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}.tar.gz";
      sha256 = "1cbk7h20c51zs844zkqz83xby08rra6i7pfpqhwj33rai32j503r";
      version = "25";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v25";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}_2.tar.gz";
      sha256 = "0kiwfpa6yicfbl2rs7ga2g38j77m9bmwc02inb3gr9z96xm9xi2s";
      version = "25";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v25_1";
  }
  {
    package = fetchs3Archive rec {
      pname = "samsung_browser";
      s3url = "s3://bs-mobile/android/samsung_browser/samsung_browser_${version}_1.tar.gz";
      sha256 = "1rdj8jjm6305asz4yidxw021vdavj90wj8llxhflwy30x0pvar4s";
      version = "27";
    };
    destination = "/usr/local/.browserstack/deps/samsung_browser/v27";
  }
  {
    package = fetchs3Archive rec {
      pname = "honeyboard";
      s3url = "s3://bs-mobile/android/honeyboard/honeyboard.tar.gz";
      sha256 = "0mfxc4mgb98j2g5p8zb070prwzb1dxf8p6l1d3ghafl1i6sl1alj";
      version = "1";
    };
    destination = "/usr/local/.browserstack/deps/honeyboard/v1";
  }

  # trichromelibrary
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "fba21c48d3365f9fcac8dad1b9f8911cb008cf04b1419a05ae0c44e98d9d0ad2";
      version = "139";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v139";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "002c0yc6zhf60m933aqa2spwcx3r6kidwav7wmnlpbiyhs8w25m7";
      version = "96";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v96";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "107vg0hc4cj1hk39kcwjgsm4cw2ddax656dhwngj9fyln7gzcryl";
      version = "99";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v99";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0ydv4dirjy0z3qd85h6mxn12vqnlzmx9cs3s845yh3id1rzgmjy0";
      version = "100";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v100";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "13bmg6rb51xbd5k893zfrw1jmwbx45rfs9xkqxz4wl3h4n08ys37";
      version = "103";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v103";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0gm0pzm1jsv34xzkjgw8ns545hp165a7yyjr44m7k46wyg3zha2a";
      version = "104";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v104";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0kpaxxm9f7ml0ks61s4vkabfglbkadg4nmbi0vwkvbjyzxh0d97h";
      version = "105";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v105";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "1s1ayvlv95yqb7vdm9pmqcap0ngzlp2648rhan256j016jhaaghr";
      version = "108";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v108";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "1j9q3r7g2q77x7l6vbz1jwv3nhwhnp6846bk68jl6r9vkh307568";
      version = "111";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v111";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "02f4plk7607fvc1klq00h9w35xrdfwnc1h2pxajfqss6b1hc9ypk";
      version = "114";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v114";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "00agmg5d5ra4j782gsyv0piyy37mpg35sijxjwxq5abcxrfjg5rz";
      version = "117";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v117";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0wmm8lviyq95y3ankavdmb7a70v2gmwdszrv5jscl8ip2rl8qa87";
      version = "120";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v120";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0kd1g6sm0qliijksdmsrqnzs2lqrfvdk3vdkips3hslcpq2h7lyz";
      version = "123";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v123";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}_1.tar.gz";
      sha256 = "104qn1wd49lf0lng07l36x79hfd2g9gigssc63kawlsl31sn59wk";
      version = "127";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v127";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "16jhi0wh3wphid4xlqv9a2nw22y30hvg2kh8rzx78yfq5yms6360";
      version = "128";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v128";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "0364h5nx7hryhk869nkvf8k4mivph9yxsxs4665nyh72djxjbigz";
      version = "131";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v131";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "1kncmwpvqbx7g9i84jd9wdk6pmgixsdjbg9c17c8vivfil0l1gaj";
      version = "133";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v133";
  }
  {
    package = fetchs3Archive rec {
      pname = "trichromelibrary";
      s3url = "s3://bs-mobile/android/trichromelibrary/trichromelibrary_${version}.tar.gz";
      sha256 = "1g3hc3pw1j33wzccziwl5534mcmrwx3dkma99d553nwy7a1gcj3q";
      version = "135";
    };
    destination = "/usr/local/.browserstack/deps/trichromelibrary/v135";
  }

  # ucbrowser
  {
    package = fetchs3Archive rec {
      pname = "uc_browser";
      s3url = "s3://bs-mobile/android/uc_browser/uc_browser_${version}.tar.gz";
      sha256 = "16mpnsx7wrla6133v3wb34vzz16bzhlxnrcdyassh10qjwvq565j";
      version = "12";
    };
    destination = "/usr/local/.browserstack/deps/uc_browser/v12";
  }
# uiautomation
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "79a32fbf12fdac470f5a8bed7a98d72f8ecd72c44adf6187fb0607c195cb59f8";
      version = "33";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v33";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "cecc01ce99a6ece83da82a7adec3ed19a3a37373c2eeeb840f3276136d57bedd";
      version = "34";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v34";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1wi2r81l1jrrravjrjd1sayk1y2a5yfmfd3lr8wsfk1xqar3jhl3";
      version = "36";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v36";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1345ml5ik9l3snigws10jivyxsn8ii2g8icy4y3aflkinl8xs8hf";
      version = "37";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v37";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "08p5a0ibdahg9fs81y39xrrdibaj3zrywdija85jfiif6xgbr8ss";
      version = "38";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v38";
  }

  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "0c1fflxh5dlqccrmfs9g4j1w2xqmyrfd7jj8r4shwlpl53sf2xz8";
      version = "39";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v39";
  }

  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "091w83jbwq1m72lnqqpf3vq3ywc4a6pjcixhx8nnwn8wbx84z315";
      version = "40";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v40";
  }
  {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0wnncfw097pi0s1fzkpyhdmwjgm4hn8018x3ma8vjlf1wg87l19s";
       version = "41";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v41";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1gdqw7ca053x0x5b3ac194rd79br7ppl8kahifxncapbqj30glps";
       version = "42";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v42";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1lw4qi34lxaabqywf9ir2v8n832mpdbx797ma1cz0vk54ygy6bp5";
       version = "43";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v43";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0wcasxf5zvc9aw0alif9ykjgbm16q1iz9ik5026fvf5r9m0l0d2x";
       version = "44";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v44";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1d6fr2apd1fvgcn7b4wnc8j3g6pwaqs7i398cdcqzfqh8r0zq4nv";
       version = "45";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v45";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0hrhqgz2knlp090slpnl482gyz7zqkzbna73278zy3qz8yp89qzl";
       version = "46";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v46";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "13c20gpdi4802yxw9bnra9xhxcn6q5vlxcvxq34rimsmwzd1jhkl";
       version = "47";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v47";
   }
    {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "042y85cjdmb6fwwsfpsaj0651d3a0mc3j00shzca89zb1vrmzkfl";
       version = "48";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v48";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1qj8rlhddf1jaciq8nwlj3cnc0m169qja41ci81w1syg1ppmzv6v";
       version = "49";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v49";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1kabkv1m2hq58crqickyi5k8xkb87gwa5pdry6m8nx5asp32hlxc";
       version = "50";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v50";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1ari01fmynzja6kqb7v0b42vi1nm9i2h58ml0blkg0vpdqc72p4s";
       version = "51";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v51";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0if1y9vaa5m3rl6ix0274dyx36fb0bbwlc3xrz6frbm8k8vc3vjz";
       version = "52";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v52";
   }
      {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0qzqmpxjwa49k4arslf46yf7m3krwmiv0r3rnmnzpj2kah5z4rvz";
       version = "53";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v53";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "10ng1xqciargh9dcrz2khh02d1kqs2m611bi4f5bkl9m7lrgdvlk";
       version = "54";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v54";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0psk9ippaghrhvf1w1wp4g1mifsz1kx8xfp9vbkff6j7wrrndpz7";
       version = "55";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v55";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0py2y9zkscwa5iyq7zg5im44h181xzmp4qsgpddx5nnvmg4azqdh";
       version = "56";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v56";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1bgi2brj5k9y9a5hq472yl38kqps60j51jqz4rqk4y0qbm2dvbzp";
       version = "57";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v57";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0i4f4qgdr9dcbbrprsp14d73av7bxc869hrqm934phnn64j2ns7z";
       version = "58";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v58";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1r94j66lbiyxdl5n7xqjk2spccnj5wd4w8akgf14lbwh892wrl0r";
       version = "59";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v59";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1s6fxipjm2h6w5drhyafcqr3inb4n9s1nvg5g945hqpvx508dbxp";
       version = "60";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v60";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0b325ww6r2hhx11v76z1slc3kmvipjis5jqyw1slqic0is837w8m";
       version = "61";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v61";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "07kv3m9ampjas3xn1rkkcil4hnbdfs8syr5jigxwndbzd41z843v";
       version = "62";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v62";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "10p62x8lqc15zqjrygnc92p9szlybrkl2rk21drmdk8lhrdnh6br";
       version = "63";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v63";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "04pr6597x57295icf84xvwf35fw9vxxzxxb6v9df3hxibxki8cnq";
       version = "64";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v64";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "106v5w9m53lnjvx0v2hyclb9xixcr3di9ybl51pv005yckcn4a28";
       version = "65";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v65";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1hpwspcs8xilb3qja0xbnr2l5pq7mrj4hn7il7f537x9ah3w243n";
       version = "66";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v66";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0rla1hhd5d4wv64zbapdm4ixz03zkbgj5cg244wh65k0lwzjf4ac";
       version = "67";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v67";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1dqa9jfrc5ri18ii2qfkz9li7x94pzkxd1x918fxw4rycnm48ki1";
       version = "68";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v68";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "12qjlimdxxbs6ajb15vb2alff6wk203rk0d11b7afvkayykfnly7";
       version = "69";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v69";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "7369154eef894bf7390a5793ff73bcdc4c7fd19bfec7822b974c90e662647c9e";
       version = "70";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v70";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "06q6fn616fs6vgypsddgga7y5saqmqwj35mybbzcy3b1m8nppgrw";
       version = "71";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v71";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1h1mjx74cvkgj81v84vxw8agp23l8jdbkinqp88gcb8l42zal6bw";
       version = "72";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v72";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0j3xw4xgmykw1xx4c692fsxii3z13y0ddgrr36mpc68ylm32vvkv";
       version = "73";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v73";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1zc53mm5xvhc4kfb8wcd7xgs0rwl1cmp2j15zncpp13c00cn0dwr";
       version = "74";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v74";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "0nyscqy17plp8f5fvyiwn3id2mzzgch7sy1nd7iicf63r589nm25";
       version = "75";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v75";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "15799mzr0ci0zhb85ycpjyinh4nd4084n0cwgnxd9fqh5fx0dd0h";
       version = "76";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v76";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "13h9bpijll7kmh2sqwp3izf3ymbsvilzdn5pky93f6dpl0dd3zjs";
       version = "77";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v77";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "19szp6shx52g27h5d7alfjpnp60dl4dxl3wk0hki2zbyqwb40yzj";
       version = "78";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v78";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "05sdkg55jh6qb6z3fjraj4llb8a5d9s3xx7ag92j05n4di3v3vqd";
       version = "79";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v79";
   }
    {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "1p4rsbij8kmfq380m8n23f373y6v50mfw60mkf7svgixzcv9y5sv";
       version = "80";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v80";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation";
       s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
       sha256 = "09fx4g645vx3zhm5s1ba6fn6qm4m293dz7wpra6f3r884mwm4nrl";
       version = "81";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation/v81";
   }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_82.tar.gz";
      sha256 = "17hmlf1pl0a2qaxrkiny9p1zk8k8lrw9w4f3k5b6rcpj6rkx7d30";
      version = "82";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v82";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1dhh950avzp42ml7ygdl48ampg4lxbaapiydd81zzzrxwr8dfggd";
      version = "83";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v83";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "01mx8lzyfawy3ifcpjz5w84ihfaz937279blq3bz9sxgmxv282lk";
      version = "84";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v84";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_85.tar.gz";
      sha256 = "0ab88qvb8s0ahbp1lnglwbq973r357nxmggh5qcaxvfnrxhkqcdk";
      version = "85";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v85";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_86.tar.gz";
      sha256 = "1g23y1d1rg2wpw9g4kpqjfczdv0pl1rbcw7nn85rcm1wpn0h4mml";
      version = "86";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v86";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1xiyg7b7xdhp5w67i0hxfgqnh8cnwf3y32j9pqci9fy4z1ff96if";
      version = "87";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v87";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_88.tar.gz";
      sha256 = "19i9i5p0z9jj4y3bq5rfr6biil857xyf4wz76rxif2fi9y78k1kw";
      version = "88";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v88";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "0dwiyvckflw18kwq7icgzvmm8sx0nzngvrq559dmg5jf2zxcizdp";
      version = "89";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v89";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "0v0grz81ha3ln6xf03iv2gsm4828cdlvanqk1n91rjdj1hkg0fr9";
      version = "90";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v90";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "178578rbkmjzsh8vzsz34jhldsip3w0wjz0pr5pj9vnpafjm1xwj";
      version = "91";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v91";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "00v02dls0d9k5x77a67nnhmfpk801l9g1bq25zhslypckw8nxsyn";
      version = "92";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v92";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1b7251981ihgqasn0mpj0sz2nlb1zh59xnnfcmwwpavwxdcdngik";
      version = "93";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v93";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation";
      s3url = "s3://bs-mobile/android/uiautomation/uiautomation_${version}.tar.gz";
      sha256 = "1pd0vd5n03amns9s9y2y41yj6gzpy4z10x493dj6giws1g42bjzq";
      version = "94";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation/v94";
  }
{
  package = fetchs3Archive rec {
    pname = "uiautomation";
    s3url = "s3://bs-mobile/android/uiautomation/uiautomation_95.tar.gz";
    sha256 = "1b655gj81jr13h8cj5ljf4b986pkjyxmihvps45ry7vrckn3m094";
    version = "95";
  };
  destination = "/usr/local/.browserstack/deps/uiautomation/v95";
}
{
  package = fetchs3Archive rec {
    pname = "uiautomation";
    s3url = "s3://bs-mobile/android/uiautomation/uiautomation_96.tar.gz";
    sha256 = "1zwcxssw944pa70317h0h62y13jk8k3qp2br1qcxx28jfhcgwf4d";
    version = "96";
  };
  destination = "/usr/local/.browserstack/deps/uiautomation/v96";
}
  # uiautomation_test
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0hx5vknqjnvkwdl4fnin2fwxxmgl0vxj1b0k2s4wil89grlrkjwk";
      version = "14";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v14";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "1rpvmj6vsdksf5fb2mbps8jjhwq2fw4728y4j1h9r9kghbc5h48y";
      version = "15";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v15";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "b285124955cc196eec5cf5b4084dee5afd457110cc6ac93549ccfb9c0cd9d103";
      version = "16";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v16";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0dkyqbv1wcaqr09akylxb2dmhakgf6r1jy31pb249bdjmdpd4hd1";
      version = "18";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v18";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "11zigia5hf8lk08rwz3z9hqqkqwqiry0fidhhqh71gbm23kqxz7p";
      version = "19";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v19";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0sz91kwdlr6iff8n17sk7zkcrc0r9jkz48rlwahynfsrcxrsdm5g";
      version = "20";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v20";
  }

  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0qqjdl19mnycvpd9s41gasjndngjj040nz0f0m2cwg73wvq3sbiz";
      version = "21";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v21";
  }

  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0fs4v3hrgrvryfvqg2jyqf1k8vz6j8gh2b4d42kj2mbkan7y6v61";
      version = "22";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v22";
  }
  {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0kym4skprbhry50m7wzs7327pzf7xv7rp7przc1y2yy4pwrm2213";
       version = "23";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v23";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1fhc252hzcqsf9fl2461w1fp5adbjw5lzknnl7c8b3mj1a0yfhrm";
       version = "24";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v24";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1s0mcjgvmhsyz0n9wnfdzxd0v2zi9hpi7x0vwxpnkfw1v27zvgrq";
       version = "25";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v25";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1hipps6kkdxbavgln20w72kyjw9hyahwmpm280qn0k3h3m1n0xb3";
       version = "26";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v26";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0brk098bw7vck61ikgrhk0wvws69q266mkx6w5lx45y6gy9gkany";
       version = "27";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v27";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1jw05nzzb15036jcx82409brgpf2mgnhsfpzd2w72905r38c49mm";
       version = "28";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v28";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0qh1nispniiqb0xy6mlrgn5zlx7mrhx4zr2hpz1hg7311fg14h7j";
       version = "29";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v29";
   }
    {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0jjr23yx7qgyzqjhzpnjdp6nzs6m7pkb4qdg7kc5jdy6rq1y9b4q";
       version = "30";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v30";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0ndmj9qlxzfqm3b7jmny76bqr803m3yv8kgin9l7yc163z58kd22";
       version = "31";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v31";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0mq0j017aiw7rlx6xavlhnhdrm5x7dlgqlhzsnm8yiagl6ij81lm";
       version = "32";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v32";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0ijf0i9904ghqmz598nj142lbz76dd6gdy29qaqwwjmb209bhrwv";
       version = "33";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v33";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1js865h1bgh850z7fxa80641yv3pd2xk16scbhq1z7y4glfypmbz";
       version = "34";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v34";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0yqfahx7dcjiiazdfrpm34hmwp6fdg89556jyy2ymhrk17yxnh7p";
       version = "35";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v35";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0v0kscxanhmx2y4q95n24s379fi98s4zzdjhwlfycl7jqjwzjm4i";
       version = "36";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v36";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0nq3b0wc89ks0kqdmpmz0xakrz9q7qa1n1jxxd03pl19dz89dq18";
       version = "37";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v37";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0c2q9d945nl9dfvh17d4bfsw25q5wwxhszh8fdmij8ibxnv0n45l";
       version = "38";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v38";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1c11gfk13fvjpbmvga1a7s8vd56p7178dkhhw4q6mvkh0azvmafi";
       version = "39";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v39";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0zvm4ihp6yv8jismr5c2x0qyhld4rlshmb4pxnb5wh9rmk3f5dmf";
       version = "40";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v40";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0frkmznr7hy5ry3ilk2lbp4vhpk9h6msr4fb7b94vp8v86hvrx81";
       version = "41";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v41";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0lajs330i2q80m85057jz6vca2ph440lwmy4d9mvbnrg8xjdjqxl";
       version = "42";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v42";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "06sg71d94a5frzfh7mypiwld6kckbis8k7273j1nn48k92s4p3nm";
       version = "43";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v43";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0y8358pncg5vplk62j3x3x2c0z8488l0wkzxxvxqkhszp16d3qkl";
       version = "44";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v44";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "07v5sndwi11r8hm5v0hsan6ndi4p9m558vj0hc06byi5bl276lyl";
       version = "45";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v45";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0lnyyrjy59a0hfmi3lf23z0xa259h9k2p0a60bcxc82hr3kg3jmy";
       version = "46";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v46";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0aj95i5arv6c6pi24q6m9xzqzhlr9my4qxzyqg81mygrhq550nmf";
       version = "47";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v47";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "066cp3qq37f7546isss82js5c5a9c0zsijd02zg9fwdd9xqa66a9";
       version = "48";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v48";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1dz1azvdq5fya6d8vvdiih0lmrml37rzyhrp52rnq1ra9k6mf7vi";
       version = "49";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v49";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1mfr4hzxdn2516cga9lv5aq9shz6fs7l9w9i3yl1dc24xmgkbpc7";
       version = "50";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v50";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1cjwgisrwzvbxp414x201id2z7nbahq6b7dm68whpdrjb8vkshav";
       version = "51";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v51";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "d4408ea83be845ae8a8374560c32fd3f0fc139e128ef7475ab4ab6212d9d97af";
       version = "52";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v52";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "05xwmmhaj8xn4yv4ja1vg6q9gm5yc8993v91lmfv0rks2mqrf3n8";
       version = "53";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v53";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0854q29f9172spdyisw0nrri6hs2y44nikcmh85ygf6f6gcjd56w";
       version = "54";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v54";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "14m95ig9y723y7gvrhxljiybddikc886bxrw621x79xnsv35gx6n";
       version = "55";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v55";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0j0xr55faxw110c0i9pcb8rvc6a67bsgqg4q397rjj2v2cyw58ip";
       version = "56";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v56";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1rnljq3yb0zfxgvzgsg79gkgsff42xndszj3kfgnj9a5mbhcg40h";
       version = "57";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v57";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0wra2b7g8a5q43qd02lslx7031p1l7gsm1vcl02k3rkjz3f6mqfy";
       version = "58";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v58";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1gylbnzvcapc3i8fpg3n00wqljbb3fi3n0k5kv718pwfcxr07hqn";
       version = "59";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v59";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1lmc3kbwx6zcamkbwq8q9wpa5igc6ky7a7jzgyl5x6gf6kyrxa1r";
       version = "60";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v60";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0zf6fxqs32q177a4mxdbzdpwc7x2q374z31rsmnnh52h6054yq5f";
       version = "61";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v61";
   }
    {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "0kvapldawsvvgkcairfk0kijvnc6j78nax9zc38d8wvmllxsxq6l";
       version = "62";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v62";
   }
   {
     package = fetchs3Archive rec {
       pname = "uiautomation_test";
       s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
       sha256 = "1y4qv64lhldw8zqps9y2vj0fkvr43nz8vnzi8v304llsk2w98ail";
       version = "63";
     };
     destination = "/usr/local/.browserstack/deps/uiautomation_test/v63";
   }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_64.tar.gz";
      sha256 = "1k9gn0g2yymi6id86i73x32g3p1wpbrdyyy3cw386bn8mjsdsfng";
      version = "64";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v64";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "13bmpg27fpn6pwp5pc3fp48cmw3pqafy7riv8shb1p2nn49qfjcs";
      version = "65";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v65";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "16ysf5kjkcxhxrnkf0c6bav813lff2j2mz5vqf9wrnd0qby4l1m6";
      version = "66";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v66";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "1qq3ajssqd4s37fa5ndh9khd5v4n0n4f4w1r5nvbsxp9m0fmxazi";
      version = "67";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v67";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "004k18mijq0jhr720ssfvg5iywl36ajjgwrlnad6al1v7ihsb1vn";
      version = "68";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v68";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0lljiibspvk106f99b6sk25i6dfjkgfjiayqm6n9wpnxk3xdiipk";
      version = "69";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v69";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "1qa3v91dp0sivdpc4mcbxkjrbc7vr1z1a8kbmvx3prf5hv7j4wq5";
      version = "70";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v70";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "02agf008crs91vbhfp9zvb84djb8kdmk4ic96sg72wqxshmxs522";
      version = "71";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v71";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0xrh010a56h49axqdyxqkqwgy4gw8l18nzk65zvpy37g4iwv34cs";
      version = "72";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v72";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "1anw1kcv0z5jilwrkhfc40siili03fw5sz80n34d8b3596w00688";
      version = "73";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v73";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0syakzl1jlmjdi8h63ywb4pz22p9q2r443xpi7j811spzf8xms2r";
      version = "74";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v74";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "0nvjv5r52bqqhsn8877imcy52pfya50sfhr3m3qggjlshivij2g0";
      version = "75";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v75";
  }
  {
    package = fetchs3Archive rec {
      pname = "uiautomation_test";
      s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_${version}.tar.gz";
      sha256 = "12cciwnd9kp1s9xfxlrl56ia4pkwsxk1vbx6fmw7pdvjr92hmizr";
      version = "76";
    };
    destination = "/usr/local/.browserstack/deps/uiautomation_test/v76";
  }
{
  package = fetchs3Archive rec {
    pname = "uiautomation_test";
    s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_77.tar.gz";
    sha256 = "1vswidqkmngvhncss808cw8ddp7ya1iqswibkjwpk86x6ikvwscj";
    version = "77";
  };
  destination = "/usr/local/.browserstack/deps/uiautomation_test/v77";
}
{
  package = fetchs3Archive rec {
    pname = "uiautomation_test";
    s3url = "s3://bs-mobile/android/uiautomation_test/uiautomation_test_78.tar.gz";
    sha256 = "1m5in41ygimkyyiam82dr3cjyg6ld3svds4n1a1vwds4bhf68v5r";
    version = "78";
  };
  destination = "/usr/local/.browserstack/deps/uiautomation_test/v78";
}
  # camera check app (can_i_see)
  {
    package = fetchs3Archive rec {
      pname = "camera_check";
      s3url = "s3://bs-mobile/android/camera_check/camera_check_${version}.tar.gz";
      sha256 = "1dkc5v6lappxpfbn34758jgmdavqwb62ixd5nx94paxwic262m2h";
      version = "6";
    };
    destination = "/usr/local/.browserstack/deps/camera_check/v6";
  }
  {
      package = fetchs3Archive rec {
        pname = "camera_check";
        s3url = "s3://bs-mobile/android/camera_check/camera_check_${version}.tar.gz";
        sha256 = "1fyn75jf5lhd4swxg3f60gask4fkgy56dj4259qbkc4v4x2wwaqs";
        version = "7";
      };
      destination = "/usr/local/.browserstack/deps/camera_check/v7";
  }
  {
      package = fetchs3Archive rec {
        pname = "camera_check";
        s3url = "s3://bs-mobile/android/camera_check/camera_check_${version}.tar.gz";
        sha256 = "0ypmym9kz15c8iq5my4hbmqyzgda4gmkapfzws5rrvy9l6cxzi2x";
        version = "8";
      };
      destination = "/usr/local/.browserstack/deps/camera_check/v8";
  }

  # google photos app
  {
    package = fetchs3Archive rec {
      pname = "google_photos";
      s3url = "s3://bs-mobile/android/photos_pixel.tar.gz";
      sha256 = "19gyssvy971bcch307157x7s2qxzc6k3icrhcgxllq63lwg9didr";
      version = "6";
    };
    destination = "/usr/local/.browserstack/deps/google_photos";
  }

  # BrowserStackDeviceOwner
  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "1w9a3lm1dg2gjqmgx3gsnxk8y02y4qj8651zhqy47iv7bdgdnjfs";
      version = "9.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v9.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "0xbbsld99x7gd100fxxdaaymlmhj4kjv79chcws85b93kvrxp0jj";
      version = "10.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v10.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "0fgg3j6wvii7r0q2phbl6r4bc9na6awqs9dv9rkqh7mrf3a4rkkn";
      version = "11.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v11.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "01vhzixr8pzf3n04mz0lqahn5w1zvfz1zv4yrg6aqh2b8g3if4g0";
      version = "12.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v12.0";
  }

  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "1l6ci2sa47kfhsk58k4vrmhgr0jwgw4pr0cm5wbn04kav03mnxxg";
      version = "13.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v13.0";
  }

  {
    package = fetchs3Archive rec {
      pname = "browserstack_device_owner";
      s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
      sha256 = "1wy90vvsyh1zhflnkwzqc28hk251zypybgk91hyffml8j0balsnm";
      version = "14.0";
      };
    destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v14.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "0fkzh2rfw56qjarwppf8yg4s9c0llpdvmmybmc7m0rvx7sjf0m1n";
        version = "15.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v15.0";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "1n5j65kilhx5rxb1mlp7vjnnhzcpmb8xidcnkz21gy7wwxhw67y8";
        version = "16.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v16.0";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "0kgk2lqz3kcrgz62qpx4f1n1naiqji24apxpd6p29gh72yxpmqsq";
        version = "17.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v17.0";
    }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "1szm87603rb7abzmq89bynpncs9znaz1w2nffgs8dciniz9vraz5";
        version = "18.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v18.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "1x03qhkvyyj4lbwppzf8mq4ngsyr1v83wzvl2smgnyz5mwciwq2r";
        version = "19.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v19.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "14nxm0bv77dwhk311bi4yl5dp6jmj1lhckb279xjjz84h117md1g";
        version = "20.0";
        };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v20.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "0yfa8d3a3gzdgrjpdkl5mabci4ijcpkr3mf6gwi6sizz5i4h4im8";
        version = "21.0";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v21.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "0rfg0n622aab1xcsn1r0y3hlg0j7b0i9wpy14ika58k5365vl79i";
        version = "22.0";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v22.0";
  }

  {
      package = fetchs3Archive rec {
        pname = "browserstack_device_owner";
        s3url = "s3://bs-mobile/android/browserstack_device_owner/browserstack_device_owner_${version}.tar.gz";
        sha256 = "1vmvyjk52xsjwrywci9fn568a0xngv9b3pbf86gdn5rgvp04fjzh";
        version = "23.0";
      };
      destination = "/usr/local/.browserstack/deps/browserstack_device_owner/v23.0";
  }

  # inputinjector
  {
    package = fetchs3Archive rec {
      pname = "input_injector";
      s3url = "s3://bs-mobile/android/input_injector/input_injector_${version}.tar.gz";
      sha256 = "1ihymjzd22rx967dc8qrifvq6l0f26cxqy6bwzmvmvgdgfsqbxvx";
      version = "1";
    };
    destination = "/usr/local/.browserstack/deps/input_injector/v1";
  }
  {
    package = fetchs3Archive rec {
      pname = "input_injector";
      s3url = "s3://bs-mobile/android/input_injector/input_injector_${version}.tar.gz";
      sha256 = "0s30gcazvdzc8bbpmzj2y92ibdw8szwzfpshzxmm6w71a3c30qgi";
      version = "2";
    };
    destination = "/usr/local/.browserstack/deps/input_injector/v2";
  }
  {
    package = fetchs3Archive rec {
      pname = "input_injector";
      s3url = "s3://bs-mobile/android/input_injector/input_injector_${version}.tar.gz";
      sha256 = "1fcyx91hc4k0mqbk8f9hy6inyvxpwqicrcprjd1q1zwndld1dc79";
      version = "3";
    };
    destination = "/usr/local/.browserstack/deps/input_injector/v3";
  }
  # inputinjector test
  {
    package = fetchs3Archive rec {
      pname = "input_injector_test";
      s3url = "s3://bs-mobile/android/input_injector_test/input_injector_test_${version}.tar.gz";
      sha256 = "18nm45zwiznp60wp94kvj59lfm2px5q2q5qynd0jnfz5lijlki14";
      version = "0";
    };
    destination = "/usr/local/.browserstack/deps/input_injector_test/v0";
  }

  # browserstack watcher
  {
      package = fetchs3Archive rec {
      pname = "browserstack_watcher";
      s3url = "s3://bs-mobile/android/browserstack_watcher/browserstack_watcher_${version}.tar.gz";
      sha256 = "1wnsn9anfhhpdvh773wbrxhygkq8narls5h69v1n2p9az5visp95";
      version = "83";
    };
      destination = "/usr/local/.browserstack/deps/browserstack_watcher/v83";
  }
  {
    package = fetchs3Archive rec {
    pname = "browserstack_watcher";
    s3url = "s3://bs-mobile/android/browserstack_watcher/browserstack_watcher_${version}.tar.gz";
    sha256 = "05jkj3sng59nbdfgv0vmkwa4ygpvn8kfmdwazaaqjzvgb2w99lqq";
    version = "84";
  };
    destination = "/usr/local/.browserstack/deps/browserstack_watcher/v84";
  }

  # google maps
  {
    package = fetchs3Archive rec {
      pname = "google_maps";
      s3url = "s3://bs-mobile/android/googlemaps/googlemaps_${version}.tar.gz";
      sha256 = "18l8h3vn7yfzv8600vs4pv0ysfa7cyp6c88vl0d865h5nvwh1w53";
      version = "9.79.2";
    };
    destination = "/usr/local/.browserstack/deps/googlemaps/v9";
  }

  # huawei browser

  {
    package = fetchs3Archive rec {
      pname = "huawei_browser";
      s3url = "s3://bs-mobile/android/huaweibrowser/huaweibrowser_${version}.tar.gz";
      sha256 = "f57f87d20c525b56900625bd23d638ead111aeeed9ff2edcf64c14e4202935b8";
      version = "15.0.1";
    };
    destination = "/usr/local/.browserstack/deps/huaweibrowser/v15.0.1";
  }

  # facebook

  {
    package = fetchs3Archive rec {
      pname = "facebook";
      s3url = "s3://bs-mobile/android/facebook/facebook_${version}.tar.gz";
      sha256 = "1b0sj1rhrs4y5dkwsrm5phc9d0wvbz1iswkm29skr5019f25rnry";
      version = "175.0.0.40.97";
    };
    destination = "/usr/local/.browserstack/deps/facebook/v175";
  }

  {
    package = fetchs3Archive rec {
      pname = "facebook";
      s3url = "s3://bs-mobile/android/facebook/facebook_${version}.tar.gz";
      sha256 = "1n39xq38j8ha1dyqgg4pvzlq0ns9ajnlqrhgrzfljjigcsnl49nk";
      version = "369.0.0.18.103";
    };
    destination = "/usr/local/.browserstack/deps/facebook/v369";
  }

  # talkback app for accessibility
  {
    package = fetchs3Archive rec {
      pname = "talkback";
      s3url = "s3://bs-mobile/android/talkback/talkback_${version}.tar.gz";
      sha256 = "1zpgf7caja7vk551d9rdasgrps5qw4d25zzm2484281gj75lz98i";
      version = "12";
    };
    destination = "/usr/local/.browserstack/deps/talkback/v12";
  }


  # voice packs for rooted devices for talkback audio
  {
    package = fetchs3Archive rec {
      pname = "voice_packs";
      s3url = "s3://bs-mobile/android/voice_packs/voice_pack_${version}.tar.gz";
      sha256 = "0r2xhrfl57hh7jj5fdbgfknxavnrcaxcv34rb1v3j6275846a8xa";
      version = "1";
    };
    destination = "/usr/local/.browserstack/deps/voice_packs/v1";
  }
  # PDF viewer for Samsung devices
  {
    package = fetchs3Archive rec {
      pname = "pdf_viewer";
      s3url = "s3://bs-mobile/android/GooglePDFViewer.tar.gz";
      sha256 = "71b062f697da302b44d19ef0041a00be75717f7736d949e9ada6234c05546b53";
      version = "1";
    };
    destination = "/usr/local/.browserstack/deps/pdfviewer";
  }
  {
    package = fetchs3Archive rec {
      pname = "pdf_viewer";
      s3url = "s3://bs-mobile/android/GooglePDFViewer_2.tar.gz";
      sha256 = "0f4m2y6sln9z72xdphxy7jbpn92k2a1ps7zavnirl01scng06nfc";
      version = "1";
    };
    destination = "/usr/local/.browserstack/deps/pdfviewer_64";
  }
  # Samsung Calendar for Samsung devices S24 and S25
  {
    package = fetchs3Archive rec {
      pname = "samsung_calendar";
      s3url = "s3://bs-mobile/android/samsung_calendar.tar.gz";
      sha256 = "01mzfivrylj9k6ghwpp3y0jkns5f4b425nca9pxd7b1zdxc90ndg";
      version = "12";
    };
    destination = "/usr/local/.browserstack/deps/samsung_calendar";
  }
  # Bundletool JAR for APKS installation
  {
    package = fetchs3Archive rec {
      pname = "bundletool";
      s3url = "s3://bs-mobile/android/bundletool/bundletool_${version}.tar.gz";
      sha256 = "0f2za2kv97w7x7qvbnd6myadbdjwniy76qvw0ni7mnb4kl7ywzqs";
      version = "1_13_2";
    };
    destination = "/usr/local/.browserstack/deps/bundletool";
  }
  # Playwright Android
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "028bl91sqjwg5jmlc1n8c6df2xwv93p98r9hdf4v06dyyqcb1321";
      version = "1.28.1";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.28.1";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "0z3lxasjjsqrmvf5rmjqc6fc4ah7yxqbjj9bd1r9gzjrb9r6yxha";
      version = "1.32.3";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.32.3";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "01cv5dmjvknjrk9lngfzw682xn9a31a3slkm2pk02kpcrrfray4w";
      version = "1.34.3";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.34.3";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "053r1bv7hzpkly3c543z4afiy7jm366ivk3zhq0mxkc04mnc3sda";
      version = "1.38.1";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.38.1";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "06axakh3nqfzyya4sx71x2xpy0s365v4117a4kg7scms9myl0p3r";
      version = "1.42.1";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.42.1";
  }
    {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "08bca79hgrdcgvzg6xz25391z10lqxbcrwcy4wc0nlhg6hcml97w";
      version = "1.47.0";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.47.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "081fff8dh5nzwgi613y4cpkjj4m7891jswdka928ry4j7cf2w9ib";
      version = "1.53.0";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.53.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "playwright";
      s3url = "s3://bs-mobile/android/playwright/playwright_android_${version}.tar.gz";
      sha256 = "19sap4gw8z1h993y4fxridmg0aqdzv9nm4r5wqx26nhpiskn02zp";
      version = "1.56.1";
    };
    destination = "/usr/local/.browserstack/deps/playwright/1.56.1";
  }
  # csp
  {
    package = callPackage ./csp {};
    destination = "/usr/local/.browserstack/csp_bin";
  }
  # GeoGuard Location Validator
  {
    package = fetchs3Archive rec {
      pname = "geocomply";
      s3url = "s3://bs-mobile/android/geocomply/geocomply_${version}.tar.gz";
      sha256 = "0w0l0qq5imvwqv3kd92hy5s0pbfq65ld36z1pdf27ydxm46ph1km";
      version = "2.11.0";
    };
    destination = "/usr/local/.browserstack/deps/geocomply/v2.11.0";
  }
  {
    package = fetchs3Archive rec {
      pname = "geocomply";
      s3url = "s3://bs-mobile/android/geocomply/geocomply_${version}.tar.gz";
      sha256 = "0np8lbajvgfrn5vzpy49ns937ij2m88mq3mapnjbbskg9qmgy1ss";
      version = "2.15.0";
    };
    destination = "/usr/local/.browserstack/deps/geocomply/v2.15.0";
  }
  # Automate AI Proxy
  {
    package = fetchs3Archive rec {
      pname = "automate-ai-proxy";
      s3url = "s3://bs-mobile/android/automate-ai-proxy/automate-ai-proxy-v${version}.tar.gz";
      sha256 = "1qmsgcy4mq3gg4lv9i5gsi8z6vzmr8i51i1lm33sddqiw0p82kwv";
      version = "1.17";
    };
    destination = "/usr/local/.browserstack/deps/automate-ai-proxy/v1.17";
  }
  {
    package = fetchs3Archive rec {
      pname = "maestro-cli";
      s3url = "s3://bs-mobile/android/maestro/maestro_cli_1_39_13.tar.gz";
      sha256 = "05sjl273yjy6wi75sf8xv4b812c7c6igcfpa96j5y5jj0r8hijlp";
      version = "1.39.13";
    };
    destination = "/usr/local/.browserstack/deps/maestro/maestro_1.39.13";
  }
  {
    package = fetchs3Archive rec {
      pname = "browserstack-audio-helper";
      s3url = "s3://bs-mobile/android/browserstack_audio_helper_v1.tar.gz";
      sha256 = "10n1p5c0n5v5ximg40mgsrgsfj35qkdd98fz3vj8vqf8v22i8alx";
      version = "1.0.0";
    };
    destination = "/usr/local/.browserstack/deps/browserstack_audio_helper/v1.0.0";
  }
]
