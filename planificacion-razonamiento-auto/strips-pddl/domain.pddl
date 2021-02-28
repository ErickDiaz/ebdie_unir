(define (;Header and description

(define (domain Vehiculo)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions )

(:types
    vehiculo localizacion - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates
    (enlace ?l1 - localizacion ?l2 - localizacion)
    (ubicacion ?v - vehiculo ?l1 - localizacion)
)


;define actions here
(:action
    :parameters (?v - vehiculo ?localizacion_origen - localizacion ?localizacion_destino - localizacion)
    :precondition(and
        (ubicacion ?v ?localizacion_origen)
        (enlace ?localizacion_origen ?localizacion_destino)
    )
    :effect(and
        (ubicacion ?v ?localizacion_origen)
        (not (ubicacion ?v ?localizacion_destino))
    )
)

))

)