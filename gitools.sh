#!/usr/bash
#
# GITTOOL v1.0
#
# Twitter: @s1kr10s
# Blog: dth-security.blogspot.com
#
clear
#verificamos que se ejecute el script como root
if [ `id -u` -eq 0 ]
 then
 #ruta actual
 rutatool=$(pwd)
 #si el archivo no existe lo crea con permisos 777
 if [ -f "$rutatool/configit-tool.txt" ]
   then
      echo ""
 else
      touch configit-tool.txt
      chmod 777 configit-tool.txt
 fi
 #leemos el archivo config con la ruta
 ruta=$(cat configit-tool.txt)

 #si el archivo no esta vacio contamos los caracteres
 if [ "$ruta" == "" ]
   then
      strruta=0
 else
      strruta=$(expr length $ruta)
 fi
   #si la cantidad de caracteres es mayor que 0
   if [ "$strruta" \> 0 ]
	 then
	 while :
	 do
          #comprobamos de que la ruta del archivo config exista
	  if [ -d "$ruta" ]
	     then
	        cd $ruta
	  else
		echo -e " \e[41m\e[30mLa ruta\e[0m\e[0m\e[100m$ruta\e[0m\e[41m\e[30mes erronea o no existe.\e[0m\e[0m"
	  fi
	  echo -e "\e[93m"
	  echo " 1  => Checkout - [Ver ultimos archivos modificados]"
	  echo " 2  => Status   - [Ver archivos modificados o nuevos]"
	  echo " 3  => Commit   - [Guarda los archivos modificados en local]"
	  echo " 4  => Add      - [Agrega un archivo nuevo]"
	  echo " 5  => Pull     - [Actualiza tu commit local al mas nuevo]"
	  echo " 6  => Push     - []?"
	  echo " 7  => Clone    - [Clona un proyecto a tu PC]?"
	  echo " 8  => Diff     - [Compara archivos modificados]"
	  echo " 9  => Merge    - [Fusiona los cambios]?"
	  echo " 10 => Rm       - [Elimina archivo en trabajo]"
	  echo -e "\e[0m"
	  echo -e " \e[90m--------------------------------\e[0m"
	  echo -e " \e[32mC => Config  (ruta del proyecto)\e[0m"
	  echo -e " \e[90m--------------------------------\e[0m"
	  echo -e " \e[36mL => Limpiar (Limpiar terminal)\e[0m"
	  echo -e " \e[90m--------------------------------\e[0m"
	  echo -e " \e[91mS => Salir   (Salir del Script)\e[0m"
	  echo -e " \e[90m--------------------------------\e[0m"
	  echo -e "\e[37m"
	  read -p " ShellGit~opc# " opc
	  echo -e "\e[0m" 
	  case $opc in
	   1) 
		clear
		echo " Command: Checkout"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git checkout
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		echo;;
	   2)
		clear
		echo " Command: Status"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git status
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		echo;;
	   3)
		clear
		echo " Command: Commit (Ctrl+C -> Salir)"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git status > $ruta/sta.txt
		chmod 777 $ruta/sta.txt
		cat $ruta/sta.txt|grep "modifi" >> $ruta/tmp_sta.txt
		cat $ruta/sta.txt|grep "delete" >> $ruta/tmp_sta.txt
		cat $ruta/sta.txt|grep "new file" >> $ruta/tmp_sta.txt
		chmod 777 $ruta/tmp_sta.txt
		echo ""
		cat $ruta/tmp_sta.txt
		echo ""
		rm -f $ruta/sta.txt
		rm -f $ruta/tmp_sta.txt
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		echo -e "\e[95m"
		read -p " RUTA/ARCHIVO a Cometer: " files
		read -p " COMENTARIO: " msg
		echo -e "\e[0m"
		git commit $files -m "$msg"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   4)
		clear
		echo " Command: Add"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git status > $ruta/sta.txt
		chmod 777 $ruta/sta.txt
		cat $ruta/sta.txt|grep "new file" >> $ruta/tmp_sta.txt
		chmod 777 $ruta/tmp_sta.txt
		echo ""
		cat $ruta/tmp_sta.txt
		echo ""
		rm -f $ruta/sta.txt
		rm -f $ruta/tmp_sta.txt
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		echo -e "\e[95m"
		read -p " RUTA/ARCHIVO a Agregar: " files
		echo -e "\e[0m"
		git add $files
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   5)
		clear	
		echo " Command: Pull"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git pull
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   6)
		clear	
		echo " Command: Push"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		#git push
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   7)
		clear
		echo " Command: Clone"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		#git clone
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   8) 
		clear
		echo " Command: diff"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git diff
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   9) 
		clear
		echo " Command: Merge"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git merge
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   10) 
		clear
		echo " Command: Rm"
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		git status > $ruta/sta.txt
		chmod 777 $ruta/sta.txt
		cat $ruta/sta.txt|grep "modifi" >> $ruta/tmp_sta.txt
		cat $ruta/sta.txt|grep "delete" >> $ruta/tmp_sta.txt
		cat $ruta/sta.txt|grep "new file" >> $ruta/tmp_sta.txt
		chmod 777 $ruta/tmp_sta.txt
		echo ""
		cat $ruta/tmp_sta.txt
		echo ""
		rm -f $ruta/sta.txt
		rm -f $ruta/tmp_sta.txt
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
		echo -e "\e[95m"
		read -p " RUTA/ARCHIVO a Eliminar: " files
		echo -e "\e[0m"
		git rm $files
		for i in {16..40} {40..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo	
		echo;;
	   c) 
		clear
		echo -e " \e[41m\e[30m"
		read -p "Seguro que desea cambiar ruta del proyecto (s/n): " conf
		echo -e "\e[0m\e[0m"
		if [ "$conf" == "s" ]
		   then
	           echo " (Ejemplo: /opt/htdocs/proyect)"
	           echo -e "\e[95m"
	           read -p " Ingrese ruta del proyecto: " rutanew
		   rm -f $rutatool/configit-tool.txt
	           echo $rutanew > $rutatool/configit-tool.txt
		   chmod 777 $rutatool/configit-tool.txt
	           echo -e "\e[0m"
   		   echo -e "\e[100;38;5;82m Se cambio la ruta del proyecto: \e[30;48;5;82m $rutanew \e[0m"
		   echo ""
		   exit;
   		else
		   clear
		fi
		echo;;
	   l) 
		clear
		echo;;
	   s)
		echo -e " \e[41m\e[30m[X] Usted se ha salido del script.\e[0m\e[0m"
		echo ""
		exit;;
	   esac
	   done
   else
     echo -e " \e[47m\e[30mSe debe ralizar una configuracion previa.\e[0m\e[0m"
     echo " (Ejemplo: /opt/htdocs/proyect)"
     echo -e "\e[95m"
     read -p " Ingrese ruta del proyecto: " ruta
     echo $ruta > configit-tool.txt
     chmod 777 configit-tool.txt
     echo -e "\e[0m"
     exit;

   fi
else
  echo -e " \e[41m\e[30mNecesita ser ROOT en el sistema\e[0m\e[0m"
  echo ""
  exit;
fi
