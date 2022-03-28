(deffacts inicial
    (robot linea pedido na 2 ma 3 uv 1 ca 0 stock n 10 m 10 u 10 c 10 maximo 3 error no  )
)

(defrule coger-naranja
    (robot linea $?data1 pedido $?data2 na ?na $?data3 stock $?data4 n ?n $?data5 maximo ?m error ?e )
    (test (>= ?n ?na))
    
    =>
    (assert (robot linea na ?na $?data1 pedido $?data2 $?data3 stock $?data4 n (- ?n ?na) $?data5 maximo ?m error ?e))
)
(defrule coger-manzana
    (robot linea $?data1 pedido $?data2 ma ?ma $?data3 stock $?data4 m ?m $?data5 maximo ?m error ?e )
    (test (>= ?m ?ma))
    
    =>
    (assert (robot linea ma ?ma $?data1 pedido $?data2 $?data3 stock $?data4 m (- ?m ?ma) $?data5 maximo ?m error ?e))
)

(defrule coger-uva
    (robot linea $?data1 pedido $?data2 uv ?uv $?data3 stock $?data4 v ?v $?data5 maximo ?m error ?e )
    (test (>= ?v ?uv))
    
    =>
    (assert (robot linea uv ?uv $?data1 pedido $?data2 $?data3 stock $?data4 m (- ?v ?uv) $?data5 maximo ?m error ?e))
)

(defrule coger-caki
    (robot linea $?data1 pedido $?data2 ca ?ca $?data3 stock $?data4 c ?c $?data5 maximo ?m error ?e )
    (test (>= ?c ?ca))
    
    =>
    (assert (robot linea ca ?ca $?data1 pedido $?data2 $?data3 stock $?data4 m (- ?c ?ca) $?data5 maximo ?m error ?e))
)

(defrule final
    (declare (salience 100))
    (robot linea $?data1 pedido stock $?data4 )
    =>
    (printout t "FIN PEDIDO" crlf)
    (halt)

)