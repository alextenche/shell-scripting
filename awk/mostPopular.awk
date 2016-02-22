# gets most popular browser from access_logs
BEGIN { FS=" ";  print "Most Popular Browser" }
{ browser[$12]++ }
END { for(b in browser)
        if(max < browser[b]){
          max = browser[b];
          maxbrowser = b;
        }
        print "Most access was from ", maxbrowser, " and ", max, " times."
}
