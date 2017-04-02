BEGIN { FS="</?[A-Z_]+>|\n";somaport = 0; somaparque = 0;}
{t = "Portagens";}

/<IMPORTANCIA>/ {
		
			split ( $2, euro, ",", ll);
			h = h + euro[1]
			p = p + euro[2]
			contador++;
		}



END {
	d=10;p = p /d;
	{	
		l = h/1;
		d = p/10;
		l = l +d; 
		total = l + (l*0.23);
		print total	 

	
	}
    }
