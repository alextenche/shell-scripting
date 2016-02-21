BEGIN { FS=","}
{ print toupper($1), tolower($2), $3 }
