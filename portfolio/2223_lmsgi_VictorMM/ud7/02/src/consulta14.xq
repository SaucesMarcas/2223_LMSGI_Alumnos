<resultado>
{
for $x in doc("books")//book
let $f := string-length($x/title)
return
<libro>
  
{$x/title/text()}

<numeroCaracteres>{$f}</numeroCaracteres>
</libro>

}
</resultado>

