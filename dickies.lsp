(defun tienda-dickies ()
  (princ "¿Cuántos pantalones va comprar?: ")

  (setq numpantalones (read))
  (setq total 0) ; 
  (if (< numpantalones 5)
      (setq total (* numpantalones 80))
      (format t "Su compra es de ~d" total))
  (format t "Su compra es de ~d" total)) ;
