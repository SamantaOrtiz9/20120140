(defparameter *preguntas*
  '((animal . "¿Es un animal?")
    (domestico . "¿Es un animal doméstico?")
    (cuatro-patas . "¿Tiene cuatro patas?")
    (mamifero . "¿Es un mamífero?")
    (carnivoro . "¿Es carnívoro?")
    (pelaje . "¿Tiene pelaje?")
    (gato . "¿Es un gato?")
    (perro . "¿Es un perro?")
    (raton . "¿Es un ratón?")
    (elefante . "¿Es un elefante?")
    (jirafa . "¿Es una jirafa?")
    (leopardo . "¿Es un leopardo?")
    (conejo . "¿Es un conejo?")
    (roedor . "¿Es un roedor?")
    (desconocido . "No puedo adivinar. ¿Qué es?")))

(defun adivinar (preguntas)
  (if (null preguntas)
      (format t "No puedo adivinar. ¿Qué es?")
      (let* ((pregunta (car preguntas))
             (respuesta (y-or-n-p (cdr pregunta))))
        (if respuesta
            (adivinar (cdr preguntas))
            (adivinar (assoc 'desconocido *preguntas*))))))

(defun jugar-adivinanza ()
  (format t "Piensa en algo, y yo trataré de adivinarlo.~%")
  (adivinar *preguntas*))

(jugar-adivinanza)
