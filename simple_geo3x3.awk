@include "geo3x3.awk"

BEGIN {
    print geo3x3_encode(35.65858, 139.745433, 14)
    print geo3x3_decode("E9139659937288")
}