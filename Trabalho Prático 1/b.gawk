BEGIN { FS="</?[A-Z_]+>|\n";}


/<SAIDA>/ {c++;print "a saida nº " c" denomina-se " $2; }

END { }
