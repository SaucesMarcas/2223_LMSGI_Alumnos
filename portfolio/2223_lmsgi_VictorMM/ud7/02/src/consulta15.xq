<resultado>
{
for $x in doc("books")//book[contains(lower-case(title),'x')]
order by $x/title descending
return $x/title
}
</resultado>

