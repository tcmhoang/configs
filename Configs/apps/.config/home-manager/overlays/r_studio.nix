self: super: {
  r_studio = super.rstudioWrapper.override {
    packages = with self.rPackages; [
      plyr
      reshape2

      dplyr
      tidyr

      purrr

      lme4
      lmerTest
      nnet
      ordinal
      MASS

      car
      ez
      emmeans
      multcomp
      phia

      ARTool
      PMCMRplus
      coin
      XNomial
      RVAideMemoire

      ggplot2
      RCurl
      fitdistrplus
      nortest
      skimr
    ];
  };
}
