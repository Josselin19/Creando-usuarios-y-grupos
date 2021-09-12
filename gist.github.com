Primer comando para la creacion de grupo
y asignacion de ID utilice el siguiente comando 

sudo groupadd -g 503 casa

Para confirmar el ID de grupo
sudo grep casa /etc/group

Lo siguiente comando utilizamos es para 
la creacion de usuarios com el siguiente comando

useradd GLORIA
useradd Usis003518

Despues de crear los usuarios tenemos que 
asignarles una password por motivo
de seguridad con el sigueinte comando 

passwd GLORIA
passwd Usis003518

Despues de la creacion de los usuarios y asignarle sus password,
hoy agregamos a los usuarios que previamente creamos 
a los grupo casa con el siguiente comando

adduser GLORIA casa
adduser Usis003518

Hoy vamos a volver a cambiar el nombre del grupo casa a familia
con el siguiente comando

-n es el nuevo nombre del grupo 
groupmod -g 503 -n familia casa


