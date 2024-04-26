
***************************************
FUNCTION N_BORRAMYSQL(_servidor,_claveid)
LOCAL _actualiza,_ret:=.T.
_actualiza:= "UPDATE AA_DEVOLVER SET  cant_dev='"+TRANSFORM(0,"9")+"', cant_aprob='"+TRANSFORM(0,"9")+"'  WHERE CONCAT(nro_deu,rubro,nro,fecsal,horasal) ='"+_claveid+"'"
_servidor:Query(_actualiza)

IF _servidor:NetErr()
   ALERT(_servidor:Error())
   AVISO_ERRMYSQLPEDFRANQ(_servidor,_actualiza)
   _ret:=.F.
   ALERTA(.F.,4,"NO SE PUDO BORRAR EL ART�CULO")
ENDIF    
RETURN   
hola