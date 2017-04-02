BEGIN { FS="</?[A-Z_]+>|\n";somaport = 0; somaparque = 0;}
{t = "Portagens";}

/<IMPORTANCIA>/ { x= $2;split ( $2, euros, ",", ll);}
/<TIPO>/ { 	
		o = euros[2]
		l = $2; 
			if (t==l)
			{
				somaport = somaport + euros[1];
				somaportc = somaportc + euros[2];
			} 
			if (t!=l){ somaparque = somaparque + euros[1];
			somaparquec = somaparquec + o;}
	 }


END {
	d = 10;somaparquec=somaparquec/10;
	{
		convertfloat = somaparquec/10;
		somaparque = somaparque + convertfloat;
		totalparques = somaparque + somaparque *0.23;
		print totalparques
	}
    }
