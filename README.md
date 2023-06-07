# Working with Image Data

Step 1. Clone the [GitHub repository](https://github.com/wolfganghuber/WorkingWithImageData/): `git clone https://github.com/wolfganghuber/WorkingWithImageData/`

Step 2. View a rendered version of the demo at <https://www.huber.embl.de/users/whuber/2304-Imaging-Data-in-R/demo.html>

Step 3. Follow the steps described in the file demo.qmd in this repository. 

To ensure the required R packages are installed, please run `BiocManager::install(c("knitr", "dplyr", "ggplot2", "tidyr", "purrr", "devtools", "reshape2", "stringr", "terrainr", "imagefx", "dill/beyonce", "EBImage"))`. 

Make sure your working directory is the top level of the cloned repository. `demo.qmd` will load example data files (images) from the `fig` subdirectory of this repository. In addition, it will try to download via the internet some larger files from <https://www.huber.embl.de/users/whuber/2304-Imaging-Data-in-R/resources/>

Advanced users can try the optional parts of the demo, which involve some longer computations that need the system application (i.e., not R package) `ffmpeg` installed on your computer. You can obtain it from <https://ffmpeg.org> or from your package manager. Similarly, `youtube-dl` from <https://youtube-dl.org/> and <https://github.com/ytdl-org/youtube-dl/>

Further reading: [Book chapter](https://www.huber.embl.de/msmb/11-chap.html) in the [Modern Statistics for Modern Biology](https://www.huber.embl.de/msmb) textbook.

This material was first presented on 2023-03-23 in the [Workshops for Ukraine series](https://sites.google.com/view/dariia-mykhailyshyna/main/r-workshops-for-ukraine) organized by Dariia Mykhailyshyna.
