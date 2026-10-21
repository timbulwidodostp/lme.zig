# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Zero-inflated Gaussian Mixed Model Use lme.zig (NBZIMM) With (In) R Software
install.packages("remotes")
remotes::install_github("nyiuab/NBZIMM")
library("NBZIMM")
# Estimate Zero-inflated Gaussian Mixed Model Use lme.zig (NBZIMM) With (In) R Software
lme.zig = read.csv("https://raw.githubusercontent.com/timbulwidodostp/lme.zig/main/lme.zig/lme.zig.csv",sep = ";")
lme.zig_Y <- lme.zig$lme.zig
lme.zig_X1 <- lme.zig$lme.zig_1
lme.zig_X2 <- lme.zig$lme.zig_2
lme.zig_X3 <- lme.zig$lme.zig_3
lme.zig_X4 <- lme.zig$lme.zig_4
lme.zig_X5 <- lme.zig$lme.zig_5
lme.zig_X6 <- lme.zig$lme.zig_6
lme.zig_ <- data.frame(lme.zig_Y, lme.zig_X1, lme.zig_X2, lme.zig_X3, lme.zig_X4, lme.zig_X5, lme.zig_X6)
lme.zig = lme.zig(fixed = lme.zig_Y ~ lme.zig_X1 + lme.zig_X2 + lme.zig_X3 + lme.zig_X4 + lme.zig_X5, random = ~ 1 | lme.zig_X6, data = lme.zig_)
summary(lme.zig)
# Zero-inflated Gaussian Mixed Model Use lme.zig (NBZIMM) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
