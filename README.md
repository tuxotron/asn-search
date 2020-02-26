# asn-search

This tool will dump the ASN information using [Hurricane Electric](https://bgp.he.net/)

This tool runs on Docker, and you can either use an image I have already created:

    docker run -it --cap-add=SYS_ADMIN asn-search <COMPANY NAME>

Or you can build it yourself:

    docker build -t asn-search .

Ex:

    docker run -it --cap-add=SYS_ADMIN asn-search aol
    
    aol
    AS15445
    AS13084
    62.51.0.0/16