# Unidad 7.3 XQUERY BAILES

1. Mostrar cada uno de los nombres de los bailes con la etiqueta "losbailes"
   
   `let $bailes := doc('bailes')//baile
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()}</baile>}
  </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Tango</baile>
        <baile>Cha-cha-cha</baile>
        <baile>Rock</baile>
        <baile>Merengue</baile>
        <baile>Salsa</baile>
        <baile>Pasodoble</baile>
    </losbailes>
    ```

2. Mostrar los nombres de los bailes seguidos con el número de plazas entre paréntesis, ambos 
dentro de la misma etiqueta "losbailes".

    `let $bailes := doc('bailes')//baile
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()} ({data($baile/plazas)})</baile>}
  </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Tango (20)</baile>
        <baile>Cha-cha-cha (18)</baile>
        <baile>Rock (15)</baile>
        <baile>Merengue (12)</baile>
        <baile>Salsa (10)</baile>
        <baile>Pasodoble (8)</baile>
    </losbailes>
    ```

3. Mostrar los nombres de los bailes cuyo precio sea mayor de 30.

    `let $bailes := doc('bailes')//baile[precio > 30]
    return
      <losbailes>
        {for $baile in $bailes
        return <baile>{$baile/nombre/text()}</baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Cha-cha-cha</baile>
        <baile>Merengue</baile>
        <baile>Salsa</baile>
        <baile>Pasodoble</baile>
    </losbailes>
    ```

4. Mostrar los nombres de los bailes cuyo precio sea mayor de 30 y la moneda "euro".

    `let $bailes := doc('bailes')//baile[precio > 30 and precio/@moneda = 'euro']
    return
      <losbailes>
        {for $baile in $bailes
        return <baile>{$baile/nombre/text()}</baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Cha-cha-cha</baile>
        <baile>Salsa</baile>
        <baile>Pasodoble</baile>
    </losbailes>
    ```

5. Mostrar los nombres y la fecha de comienzo de los bailes que comiencen el mes de enero (utiliza 
para buscarlo la cadena de texto "/1/").

    `let $bailes := doc('bailes')//baile[starts-with(comienzo, '1/')]
return
  <losbailes>
    {for $baile in $bailes
    return <baile>{$baile/nombre/text()}, {$baile/comienzo/text()}</baile>}
  </losbailes>
`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Tango, 1/1/2011</baile>
        <baile>Cha-cha-cha, 1/2/2011</baile>
        <baile>Rock, 1/3/2011</baile>
        <baile>Merengue, 1/1/2011</baile>
        <baile>Salsa, 1/5/2011</baile>
        <baile>Pasodoble, 1/1/2011</baile>
    </losbailes>
    ```

6. Mostrar los nombres de los profesores y la sala en la que dan clase, ordénalos por sala.

    `let $bailes := doc('tu_archivo.xml')//baile
    return
      <losbailes>
        {for $baile in $bailes
        order by $baile/sala/text()
        return <baile>{$baile/profesor/text()}, Sala {$baile/sala/text()}</baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Roberto Garcia, Sala 1</baile>
        <baile>Miriam Gutierrez, Sala 1</baile>
        <baile>Laura Mendiola, Sala 1</baile>
        <baile>Miriam Gutierrez, Sala 1</baile>
        <baile>Jesus Lozano, Sala 2</baile>
        <baile>Jesus Lozano, Sala 2</baile>
    </losbailes>
    ```

7. Mostrar los nombres de los profesores eliminando los repetidos y acampañar cada nombre con 
todas las salas en la que da clase, ordénalos por nombre.

    `let $bailes := doc('bailes')//baile
    let $profesores := distinct-values($bailes/profesor)
    return
      <losbailes>
        {for $profesor in $profesores
        let $salas := $bailes[profesor = $profesor]/sala
        order by $profesor
        return <baile>{$profesor}: {string-join($salas, ', ')}</baile>}
     </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Jesus Lozano: 2, 2</baile>
        <baile>Laura Mendiola: 1</baile>
        <baile>Miriam Gutierrez: 1, 1</baile>
        <baile>Roberto Garcia: 1</baile>
    </losbailes>
    ```

8. Mostrar la media de los precios de todos los bailes.

    `let $bailes := doc('books')//baile
    let $precios := $bailes/precio
    return
      <media>
        {avg($precios)}
      </media>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>Jesus Lozano: 2, 2</baile>
        <baile>Laura Mendiola: 1</baile>
        <baile>Miriam Gutierrez: 1, 1</baile>
        <baile>Roberto Garcia: 1</baile>
    </losbailes>
    ```

9. Mostrar la suma de los precios de los bailes de la sala 1.

    `let $bailes := doc('bailes')//baile[sala = '1']
    let $precios := $bailes/precio
    return
      <suma>
        {sum($precios)}
      </suma>`
   
   Resultado:
   
   ```Xpath
    <suma>457</suma>
    ```

10. Mostrar cuántas plazas en total oferta el profesor "Jesus Lozano".

    `let $bailes := doc('bailes')//baile[profesor = 'Jesus Lozano']
    let $plazas := $bailes/plazas
    return
      <total_plazas>
        {sum($plazas)}
      </total_plazas>
    `
   
   Resultado:
   
   ```Xpath
    <total_plazas>22</total_plazas>
    ```

11. Mostrar el dinero que ganaría la profesora "Laura Mendiola" si se completaran todas las plazas de 
su baile, sabiendo que sólo tiene un baile.

    `let $baile := doc('bailes')//baile[profesor = 'Laura Mendiola']
    let $plazas := $baile/plazas
    let $precio := $baile/precio
    return
      <ganancia>
        {sum($plazas) * $precio}
      </ganancia>`
   
   Resultado:
   
   ```Xpath
    <ganancia>450</ganancia>
    ```

12. Mostrar el dinero que ganaría el profesor "Jesus Lozano" si se completaran todas las plazas de su 
baile, pero mostrando el beneficio de cada baile por separado.

    `let $bailes := doc('bailes')//baile[profesor = 'Jesus Lozano']
    return
      <losbailes>
        {for $baile in $bailes
        let $plazas := $baile/plazas
        let $precio := $baile/precio
        return <baile>{$baile/nombre/text()}: {sum($plazas) * $precio}</baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes><baile>Merengue: 900</baile><baile>Salsa: 320</baile></losbailes>
    ```

13. Mostrar el dinero que ganaría la profesora "Laura" (no conocemos su apellido) si se completaran 
todas las plazas de su baile.

    `let $bailes := doc('bailes')//baile[starts-with(profesor, 'Laura')]
    let $plazas := $bailes/plazas
    let $precio := $bailes/precio
    return
      <ganancia>
        {sum($plazas) * $precio}
      </ganancia>`
   
   Resultado:
   
   ```Xpath
    <ganancia>450</ganancia>
    ```

14. Mostrar el nombre del baile, su precio y el precio con un descuento del 15% para familias 
numerosas. Ordenar por el nombre del baile

    `let $bailes := doc('bailes')//baile
    return
      <losbailes>
        {for $baile in $bailes
        let $precio := $baile/precio
        let $descuento := $precio * 0.15
        let $precio_descuento := $precio - $descuento
        order by $baile/nombre/text()
        return <baile>
                 <nombre>{$baile/nombre/text()}</nombre>
                 <precio>{$precio}</precio>
                 <precio_descuento>{$precio_descuento}</precio_descuento>
               </baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>
            <nombre>Cha-cha-cha</nombre>
            <precio>
                <precio cuota="trimestral" moneda="euro">80</precio>
            </precio>
            <precio_descuento>68</precio_descuento>
        </baile>
        <baile>
            <nombre>Merengue</nombre>
            <precio>
                <precio cuota="trimestral" moneda="dolares">75</precio>
            </precio>
            <precio_descuento>63.75</precio_descuento>
        </baile>
        <baile>
            <nombre>Pasodoble</nombre>
            <precio>
                <precio cuota="anual" moneda="euro">320</precio>
            </precio>
            <precio_descuento>272</precio_descuento>
        </baile>
        <baile>
            <nombre>Rock</nombre>
            <precio>
                <precio cuota="mensual" moneda="euro">30</precio>
            </precio>
            <precio_descuento>25.5</precio_descuento>
        </baile>
        <baile>
            <nombre>Salsa</nombre>
            <precio>
                <precio cuota="mensual" moneda="euro">32</precio>
            </precio>
            <precio_descuento>27.2</precio_descuento>
        </baile>
        <baile>
            <nombre>Tango</nombre>
            <precio>
                <precio cuota="mensual" moneda="euro">27</precio>
            </precio>
            <precio_descuento>22.95</precio_descuento>
        </baile>
    </losbailes>
    ```

15. Mostrar todos los datos de cada baile excepto la fecha de comienzo y de fin.

    `let $bailes := doc('bailes')//baile
    return
      <losbailes>
        {for $baile in $bailes
        return <baile>
                 <nombre>{$baile/nombre/text()}</nombre>
                 <precio>{$baile/precio/text()}</precio>
                 <plazas>{$baile/plazas/text()}</plazas>
                 <profesor>{$baile/profesor/text()}</profesor>
                 <sala>{$baile/sala/text()}</sala>
               </baile>}
      </losbailes>`
   
   Resultado:
   
   ```Xpath
    <losbailes>
        <baile>
            <nombre>Tango</nombre>
            <precio>27</precio>
            <plazas>20</plazas>
            <profesor>Roberto Garcia</profesor>
            <sala>1</sala>
        </baile>
        <baile>
            <nombre>Cha-cha-cha</nombre>
            <precio>80</precio>
            <plazas>18</plazas>
            <profesor>Miriam Gutierrez</profesor>
            <sala>1</sala>
        </baile>
        <baile>
            <nombre>Rock</nombre>
            <precio>30</precio>
            <plazas>15</plazas>
            <profesor>Laura Mendiola</profesor>
            <sala>1</sala>
        </baile>
        <baile>
            <nombre>Merengue</nombre>
            <precio>75</precio>
            <plazas>12</plazas>
            <profesor>Jesus Lozano</profesor>
            <sala>2</sala>
        </baile>
        <baile>
            <nombre>Salsa</nombre>
            <precio>32</precio>
            <plazas>10</plazas>
            <profesor>Jesus Lozano</profesor>
            <sala>2</sala>
        </baile>
        <baile>
            <nombre>Pasodoble</nombre>
            <precio>320</precio>
            <plazas>8</plazas>
            <profesor>Miriam Gutierrez</profesor>
            <sala>1</sala>
        </baile>
    </losbailes>
    ```

16. Mostrar en una tabla de HTML los nombres de los bailes y su profesor, cada uno en una fila

    `let $bailes := doc('bailes')//baile
    return
      <table>
        <tr>
          <th>Nombre del Baile</th>
          <th>Profesor</th>
        </tr>
        {for $baile in $bailes
        return
          <tr>
            <td>{$baile/nombre/text()}</td>
            <td>{$baile/profesor/text()}</td>
          </tr>}
      </table>`
   
   Resultado:
   
   ```Xpath
    let $bailes := doc('bailes')//baile
    return
      <table>
        <tr>
          <th>Nombre del Baile</th>
          <th>Profesor</th>
        </tr>
        {for $baile in $bailes
        return
          <tr>
            <td>{$baile/nombre/text()}</td>
            <td>{$baile/profesor/text()}</td>
          </tr>}
      </table>
    ```
