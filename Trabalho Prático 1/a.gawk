BEGIN { FS="</?[A-Z_]+>|\n"; contas=0 ;soma = 0;somaparque = 0;var = 0;l=0;contador=1}
{nul = "null";}
/DATA_ENTRADA/ {
		
		 split ($2, splitdata, "-", kk)
		
		
			if (splitdata[1] ==aux1)
			{	
				contador++;
			}
	
	
			else
			{

				if (aux1!= nul)
				{
					printf ("\nNo dia %d/%d/2015 efectuou um total de %s entradas\n\n",aux1,aux2, contador);
				}	
	
				aux1=splitdata[1];aux2 = splitdata[2];contador = 1;soma++;
			}
		}
	

END {}
