pkgs <- c(
  # Packages demandés
  "psych", "rsq", "questionr", "lsr", "ggpubr", "QuantPsyc",
  "reshape", "bda", "mediation", "JSmediation", "manymome",
  "lavaan", "car", "tseries", "lmtest", "estimatr",
  "parameters", "VGAM",
  # Pour l'import de fichiers Excel
  "readxl", "openxlsx"
)

install.packages(pkgs)

# Vérification : signale à la construction les packages non installés
missing <- pkgs[!pkgs %in% rownames(installed.packages())]
if (length(missing) > 0) {
  stop("Packages manquants : ", paste(missing, collapse = ", "))
}
