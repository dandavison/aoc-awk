{
  f[i++] = $0
}
END {
  while(1) {
    s += f[j++ % NR]
    if(++t[s] > 1) {
      print s
      exit
    }
  }
}
