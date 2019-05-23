let rec range m n =
    if n < m then []
    else m :: range (m + 1) n;;
