# WorkingWithImageData
Material for the talk by Wolfgang Huber in the [Workshops for Ukraine series](https://sites.google.com/view/dariia-mykhailyshyna/main/r-workshops-for-ukraine) 

- GitHub repository: please clone <https://github.com/wolfganghuber/WorkingWithImageData>
- Rendered version of the demo: <https://www.huber.embl.de/users/whuber/2304-Imaging-Data-in-R/demo.html>
- Talk slides (PDF): <https://www.huber.embl.de/users/whuber/2304-Imaging-Data-in-R/talk.pdf>
  
The needed R packages for the demo are implied by the file demo.qmd in this repository. They are:
`c("knitr", "dplyr", "ggplot2", "tidyr", "purrr", "devtools", "reshape2", "stringr", "terrainr", "imagefx", "dill/beyonce", "EBImage")`. 

Some example data files (images) used by `demo.qmd` are in the `fig` directory of this repository. In addition, running `demo.qmd` will download 
some larger files from <https://www.huber.embl.de/users/whuber/2304-Imaging-Data-in-R/resources/>

An optional part of the demo are some longer computations that also include `ffmpeg`, which you can obtain from <https://ffmpeg.org> or from your package manager. Similarly, `youtube-dl` from <https://youtube-dl.org/> and <https://github.com/ytdl-org/youtube-dl/>

Futher reading: [Book chapter](https://www.huber.embl.de/msmb/11-chap.html) in the [Modern Statistics for Modern Biology](https://www.huber.embl.de/msmb) textbook.

