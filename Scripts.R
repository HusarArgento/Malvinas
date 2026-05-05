names(ciberseg1a) #nombres
names(ciberseg1b)
dim(ciberseg1b) #dimensiones (filas x campos) 
str(ciberseg1b) #estructura
unique(ciberseg1b$FREQ) #categorias
unique(ciberseg1b$FREQ_LABEL)
indicadores <- unique(ciberseg1b$INDICATOR_LABEL)

view(indicadores)

obs <- unique(ciberseg1b$OBS_VALUE)
view(obs)

unique(ciberseg1b$OBS_STATUS_LABEL)

viviendas |>
  count(folioviv) |>
  filter(n > 1)



datos <- datos %>%
  mutate(across(c(col1, col2, col3), as.numeric))
datos <- datos %>%
  mutate(across(starts_with("var_"), as.numeric))
datos <- datos %>%
  mutate(across(where(is.character), as.numeric))
datos <- datos %>%
  mutate(across(c(col1, col2), parse_number))

g_export2 <- g_export2 %>%
  mutate(across(c(ends_with("_exports"), ends_with("_finances")), as.numeric))
