(define (problem problem_name) (:domain domain_name)
(:objects 
    carro1 - vehiculo
    Madrid - localizacion
    Valencia - localizacion
    Barcelona - localizacion
    Sevilla - localizacion
)

(:init
    (ubicacion carro1 Madrid)
    (enlace Valencia Barcelona)
)

(:goal (and
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
