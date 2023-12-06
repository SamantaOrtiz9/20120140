% Cancer 

tipo_cancer(osteosarcoma).
tipo_cancer(condrosarcoma).
tipo_cancer(sarcoma_ewing).

descripcion_tipo(osteosarcoma, "El osteosarcoma es el tipo más común de cáncer óseo y suele desarrollarse en las células óseas inmaduras. A menudo afecta a adolescentes y adultos jóvenes.").
descripcion_tipo(condrosarcoma, "Se origina en el cartílago de los huesos y tiende a afectar a personas mayores. Puede presentarse en cualquier parte del esqueleto.").
descripcion_tipo(sarcoma_ewing, "Afecta principalmente a niños y adolescentes. Suele originarse en los huesos largos.").

sintoma(dolor_oseo_persistente, "El dolor en el área afectada es un síntoma común. Puede empeorar por la noche o con la actividad.").
sintoma(hinchazon_o_masa, "La presencia de una masa en el hueso o en los tejidos circundantes.").
sintoma(fracturas_inexplicables, "Fracturas que ocurren sin lesiones aparentes o traumas.").
sintoma(limitacion_movimiento, "Dificultad para mover la articulación cercana al sitio afectado.").

metodo_diagnostico(radiografias, "Ayudan a identificar cambios en la densidad ósea.").
metodo_diagnostico(resonancia_magnetica, "Proporciona imágenes más detalladas del tejido óseo y circundante.").
metodo_diagnostico(tomografia_computarizada, "Proporciona imágenes más detalladas del tejido óseo y circundante.").
metodo_diagnostico(biopsia, "Se toma una muestra de tejido para confirmar la presencia de células cancerosas.").

tratamiento(cirugia, "Se realiza para extirpar el tumor y, en algunos casos, puede ser necesario amputar la extremidad afectada.").
tratamiento(quimioterapia, "Se utiliza para destruir las células cancerosas y prevenir su propagación.").
tratamiento(radioterapia, "La radiación se aplica para dañar o destruir las células cancerosas.").

pronostico(osteosarcoma, temprano, bueno).
pronostico(osteosarcoma, avanzado, reservado).

prevencion(vida_saludable, "No hay una forma específica de prevenir el cáncer óseo, pero llevar un estilo de vida saludable y recibir atención médica temprana ante síntomas preocupantes puede ser beneficioso.").
prevencion(seguimiento_regular, "El seguimiento médico regular es esencial para aquellos que han tenido cáncer óseo.").

posible_cancer_oseo(Paciente) :-
    sintoma(dolor_oseo_persistente, Paciente),
    sintoma(hinchazon_o_masa, Paciente),
    sintoma(fracturas_inexplicables, Paciente).

posible_cancer_oseo(Paciente) :-
    sintoma(limitacion_movimiento, Paciente),
    tipo_cancer(Tipo),
    diagnostico(Paciente, Tipo).
