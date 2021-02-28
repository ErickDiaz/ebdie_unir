(define (domain Ambulancia)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions )

(:types
    localizacion localizable - object
    paciente vehiculo -  localizable
)

; un-comment following line if constants are needed
;(:constants )

(:predicates
    (enlace ?l1 - localizacion ?l2 - localizacion)
    (ambulancia_vacia)
    (sobre ?obj - localizable ?loc - localizacion)
    (ambulancia_llena ?v - localizable ?p - localizable)
)


;define actions here
(:action Conducir
    :parameters (?v - vehiculo ?loc_org - localizacion ?loc_dest - localizacion)
    :precondition(and
        (sobre ?v ?loc_org)
        (enlace ?loc_org ?loc_dest)
    )
    :effect(and
        (sobre ?v ?loc_dest)
        (not (sobre ?v ?loc_org))
    )
)
(:action SubirPaciente
    :parameters (?v - vehiculo ?p - localizable ?loc - localizacion)
    :precondition (and 
        (sobre ?v ?loc)
        (sobre ?p ?loc)
        (ambulancia_vacia)
    )
    :effect (and
        (not (sobre ?p ?loc))
        (ambulancia_llena ?v ?p )
        (not (ambulancia_vacia))
    )
)
(:action EntregarPaciente
    :parameters (?v - vehiculo ?p - localizable ?loc - localizacion)
    :precondition (and 
        (sobre ?v ?loc)
        (ambulancia_llena ?v ?p )
    )
    :effect (and 
        (sobre ?p ?loc)
        (ambulancia_vacia)
        (not (ambulancia_llena ?v ?p ))
    )
)




)