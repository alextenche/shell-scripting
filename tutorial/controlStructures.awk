{
  if(NF < 8){
    print "short line:", $0
  } else {
    print "long line:", $0
  }
}

{
  for(i=1; i<=3; i++ ){
    print "Line " NR ", field " i ": $i;
  }
}
