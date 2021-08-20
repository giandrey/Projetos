#!/bin/bash

echo "Relatório"
echo "-------------------------"
ifconfig | awk '{if (NR==2) print "IP Interno: " $2}';
lwp-request -o text checkip.dyndns.org | awk  '{ print "IP Externo: " $NF }';
echo "------------------------------------------";
echo "Ultimos 5 acessos ao sistema Mês/Dia/Hora: ";
last | cut -d' ' -f9,10,11 | awk 'NR==1,4';
echo "------------------";
arch | awk '{print "Plataforma:",$1}';
echo "------------------";



