if [ "$1" != ""  -a  "$2" != "" ] ; then
	for f in $1/*; do
		if [ -f "$f" ]; then
		 	 echo "Que voulez-vous faire avec le fichier $(basename $f) ?"
			 echo "Effacer, Copier, Déplacer, Quitter [EeCcDdQq]"
			 read action
			if [ "$action" == "E" -o "$action" == "e" ] ; then
				echo "Effacement de $(basename $f)"
				del $f
			elif [ "$action" == "C" -o "$action" == "c" ] ; then
				echo "Copie de $(basename $f)"
				cp $f $2
			elif [ "$action" == "D" -o "$action" == "d" ] ; then
				echo "Déplacement de $(basename $f)"
				mv $f $2
			elif [ "$action" == "Q" -o "$action" == "q" ] ; then
				exit
			fi
		fi
	done
else
    echo "Parametre manquant"
fi