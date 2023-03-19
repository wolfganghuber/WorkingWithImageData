#----------------------------------------
# Overly complex dplyr, ggplot2 example
#----------------------------------------

```{r}
#| label: integration
#| warning: false
library("dplyr")
library("ggplot2")
library("purrr")
library("reshape2")
library("terrainr") # for geom_spatial_rgb

image2df = function(x)
  melt(x[,,1]) |> 
  full_join(melt(x[,,2]), by = c("Var1", "Var2")) |>  
  full_join(melt(x[,,3]), by = c("Var1", "Var2")) |> 
  `colnames<-`(c("x", "y", "r", "g", "b")) 

# Source of the images: <https://en.wikipedia.org/wiki/Borscht>.  Credits: 
# 1. CC BY 2.0 liz west from Boxborough, MA
# 2. CC BY 2.0 Bing/Goldfinch
# 3. CC0 Michał Lech
# 4. GFDL AlexusUkr 
# 5. CC BY-SA 3 uk:Користувач:Kagor - uk:Файл:Borsch
borscz = tibble(
  name      = sprintf("fig/borscz_%d.jpg", 1:5),
  image     = map(name, readImage),
  imagedf   = map(image, image2df),
  typicolor = map_vec(imagedf, \(x) rgb(median(x$r), median(x$g), median(x$b))),
  taste     = 2 + sin(seq_along(name))
)
```
```{r}
#| label: borscz2
#| fig.width:  !expr dim(borscz$image[[1]])[1] / 100
#| fig.height: !expr dim(borscz$image[[1]])[1] / 100
ggplot(borscz$imagedf[[1]]) + 
  geom_spatial_rgb(mapping = aes(x = x, y = -y, r = r, g = g, b = b))
```
```{r}
#| label: borscz3
#| fig.width: !expr dim(borscz$image)[1] / 100
#| fig.height: !expr dim(borscz$image)[1] / 100
ggplot(borscz) + 
  geom_bar(mapping = aes(y = name, x = taste, fill = typicolor), stat = "identity") + scale_color_identity() + xlim(-3, 3) +
  theme(axis.title.y = element_blank(), axis.text.y = element_blank(),
        axis.ticks.y = element_blank(), legend.position = "none") +
  geom_spatial_rgb(data = borscz$imagedf[[1]], 
                   mapping = aes(x = x, y = y, r = r, g = g, b = b))
```



#----------------------------------------
# Optimal transport attempt
#----------------------------------------

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
