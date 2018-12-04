BEGIN {
  FS = ""
}
{
  for (i = 1; i <= NF; i++)
    n[$i]++
  for (c in n) {
    x = x || n[c] == 2
    y = y || n[c] == 3
  }
  B += x
  C += y
  x = y = 0
  delete n
}
END {
  print B * C
}
