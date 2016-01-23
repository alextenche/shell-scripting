BEGIN {
        FS="\t";
        print "<table>";
        print "<tr>";
        print "\t<th>Alex</th>";
        for(i = 1; i < 7; i++){
          print "\t<th>Round", i </th>";
        }
        print "</tr>";
}

{

}
