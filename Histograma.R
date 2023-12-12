library(ggplot2)
library(dplyr)

datasetnafta <- read.csv("/Users/margaritafisher/Downloads/pv_2023-12-11.csv")
datasetnafta <- datasetnafta %>% filter(indice_tiempo == "2023-12", tipohorario == "Diurno", empresabandera == "YPF", producto == "Nafta (premium) de más de 95 Ron", provincia == "CAPITAL FEDERAL")
View(datasetnafta)

ggplot(datasetnafta, aes(x = precio)) +
  geom_histogram(binwidth = 3, fill = "magenta4", color = "grey", aes(y = ..count..)) +
  labs(title = "Histograma Nafta",
       x = "Precio",
       y = "Cantidad")

