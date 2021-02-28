(define (problem problema1) (:domain Ambulancia)
(:objects 
    ambulancia - vehiculo
    hospital - localizacion
    ;Localizaiciones
    Guatemala_L1 - localizacion
    Mixco_L2 - localizacion
    VillaNueva_L4 - localizacion
    Pinula_L3 - localizacion
    ;Pacientes
    paciente_L3 - paciente
    paciente_L4 - paciente
)

(:init
    (sobre ambulancia hospital)
    ;Ubicacion pacientes
    (sobre paciente_L3 Pinula_L3)
    (sobre paciente_L4 VillaNueva_L4)
    (ambulancia_vacia)
    ; Conexiones
    (enlace hospital Guatemala_L1)
    (enlace Guatemala_L1 hospital)
    ; Conexiones L1 -> L2
    (enlace Guatemala_L1 Mixco_L2)
    (enlace Mixco_L2 Guatemala_L1)
    ; Conexiones L2 -> L4
    (enlace Mixco_L2 VillaNueva_L4)
    (enlace VillaNueva_L4 Mixco_L2)
    ; Conexiones L4 -> L3
    (enlace VillaNueva_L4 Pinula_L3)
    (enlace Pinula_L3 VillaNueva_L4)

)

(:goal (and
    ;todo: put the goal condition here
    ;(ubicacion ambulancia Pinula_L3)
    (sobre paciente_L3 hospital)
    (sobre paciente_L4 hospital)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
