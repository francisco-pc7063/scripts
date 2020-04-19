#!/bin/bash

#Tutorial de: https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs



#Create private key
openssl genrsa -des3 -out domain.key 2048

#Create self-signed certificate from existing private key
openssl req \
       -key domain.key \
       -new \
       -x509 -days 365 -out domain.crt

#Create a CSR from an existing certificate and private key
openssl x509 \
       -in domain.crt \
       -signkey domain.key \
       -x509toreq -out domain.csr

#CSR are used to authenticate your certificate in a authentication authority and consists of the PAIR KEY
openssl x509 \
       -in domain.crt \
       -signkey domain.key \
       -x509toreq -out domain.csr
