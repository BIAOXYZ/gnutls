/*
 *      Copyright (C) 2000,2001 Fabio Fiorina
 *
 * This file is part of GNUTLS.
 *
 * GNUTLS is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * GNUTLS is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 */


/*****************************************************/
/* File: PkixTabExample.c                            */
/* Description: An example on how to use the         */
/*              'asn1_parser_asn1_file_c' function.  */   
/*****************************************************/

#include <stdio.h>
#include <string.h>
#include "../lib/cert_asn1.h"
#include "../lib/cert_der.h"

int
main(int argc,char *argv[])
{
  int result;
  char file_name[128];

  if(argc==2) strcpy(file_name,argv[1]);
  else file_name[0]=0;

  strcat(file_name,"pkix.asn");

  result=asn1_parser_asn1_file_c(file_name);

  if(result==ASN_SYNTAX_ERROR){
    printf("PARSE ERROR\n");
    return;
  }
  else if(result==ASN_IDENTIFIER_NOT_FOUND){
    printf("IDENTIFIER NOT FOUND\n");
    return;
  }
  else if(result==ASN_FILE_NOT_FOUND){
    printf("FILE NOT FOUND\n");
    return;
  }

     return;
}





