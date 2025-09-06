      program uva_precio
      implicit none
      real precio_inicial, precio_final, total
      real kilos
      integer tamano
      character tipo


      print *, 'Ingrese el precio inicial por kilo de uva: '
      read *, precio_inicial

      print *, 'Ingrese el tipo de uva (A/B): '
      read *, tipo

      print *, 'Ingrese el tamano de la uva (1/2): '
      read *, tamano

      print *, 'Ingrese la cantidad de kilos del embarque: '
      read *, kilos


      if (tipo .eq. 'A' .or. tipo .eq. 'a') then
         if (tamano .eq. 1) then
            precio_final = precio_inicial + 0.20
         else if (tamano .eq. 2) then
            precio_final = precio_inicial + 0.30
         else
            print *, 'Tama¤o invalido.'
            stop
         endif

      total = precio_final * kilos

      else if (tipo .eq. 'B' .or. tipo .eq. 'b') then
         if (tamano .eq. 1) then
            precio_final = precio_inicial - 0.30
         else if (tamano .eq. 2) then
            precio_final = precio_inicial - 0.50
         else
            print *, 'Tama¤o invalido.'
            stop
         endif
      else
         print *, 'Tipo invalido.'
         stop
      endif


      print *, 'El precio final por kilo es: ', precio_final
      print *, 'ganacia ', total


      pause
      end program uva_precio


