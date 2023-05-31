<resultado>
{
for $x in doc("books")//book[starts-with(lower-case(@category),'c')]

return $x/title
}
</resultado>

