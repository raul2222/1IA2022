(deffacts inicial
    (robot linea pedido na 2 ma 3 uv 1 stock n 10 m 10 c 10 u 10 maximo 3 error no  )
)

(defrule coger-naranja
    (robot linea $?data1 pedido $?data2 na ?na $?data3 stock $?data4 n 10 m 10 c 10 u 10 maximo 3 error no )
    (test (>= ?tl (max ?t1 ?t2)))
    =>
    (assert (familia lado1 $?data1 $?data2 $?data3 lado2 ?miembro1 t ?t1 ?miembro2 t ?t2 $?data4 linterna t (- ?tl (max ?t1 ?t2)) nivel (+ ?x 1)))
)
