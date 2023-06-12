for $x in doc("bailes")/bailes/baile
order by $x/sala/text()
return <profsala>{$x/profesor/text()}-{$x/sala/text()}</profsala>