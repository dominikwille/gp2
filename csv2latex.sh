messwerte.csv | sed "s/,/\\\) \& \\\(/g" | tr "\n" "Z" | sed "s/Z/\\\) \\\\\\\\ Z\\\(/g" | tr "Z" "\n"
