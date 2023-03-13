
# Optimal transport attempt

```{r}
#| label: transport
library("transport")
normmass = function(x) x/sum(x)
a = pgrid(normmass(resize(movg[,,49], w = 64L, h = 64L)))
b = pgrid(normmass(resize(movg[,,50], w = 64L, h = 64L)))
#a = random64a
#b = random64b
#a = random128a
#b = random128b

# debug(transport:::transport.pgrid)
tr1 = transport.pgrid(a, b, p = 2, method = "networkflow")
tr2 = transport.pgrid(a, b, p = 2, method = "shortsimplex")
plot(a, b, dplyr::filter(tr1,  from!=to))
plot(a, b, dplyr::filter(tr2,  from!=to))
```


# ApproxOT
