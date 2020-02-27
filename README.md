# asn-search

This tool will dump the ASN information using [Hurricane Electric](https://bgp.he.net/)

This tool runs on Docker, and you can either use an image I have already created:

    docker run -it --cap-add=SYS_ADMIN tuxotron/asn-search <COMPANY NAME>

Or you can build your own:

    docker build -t asn-search .
    docker run -it --cap-add=SYS_ADMIN asn-search <COMPANY NAME>

Ex:

    docker run -it --cap-add=SYS_ADMIN asn-search aol

    aol
    AS15445
    AS13084
    62.51.0.0/16

If you get this error:

    [0227/012256.257103:ERROR:headless_shell.cc(481)] Failed to serialize document: Uncaught

Keep trying. This seems to be some kind of issue with Chromium in headless mode.