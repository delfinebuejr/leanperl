!/usr/bin/perl

# PSGI is a specification
# 1. uses an anonymous subroutine
# 2. returns an anonymous hash with 3 elements
#     a. response code
#     b. header
#     c. html content

use strict;
use warnings;

my $html = "psgi is key";

my $response = sub {
    return [
        '200',
        [ 'Content-Type' => "text/html"],
        [$html],
    ];
};
