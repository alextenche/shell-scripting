BEGIN{
    FS="?"
}
{
    url=$1
    sub(/[^/]*$/,"",url)
    print "URL:",url

    sub(/.*[/]/,"",$1)
    print "Service:",$1

    n=split($2,b,/&/)
    for (i=1;i<=n;i++)
        print b[i]
}
