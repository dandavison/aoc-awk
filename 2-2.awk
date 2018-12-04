function diff(a, b) {
  d = 0
  split(a, A, "")
  split(b, B, "")
  for(i = 0; i < length(A); i++)
    if (A[i] != B[i])
      d++
  return d
}

{
  x[i++] = $0
}
END {
  for (a in x)
    for (b in x)
      if (a < b)
        if (diff(x[a], x[b]) == 1)
          print x[a], x[b]
}
