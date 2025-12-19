self: super: {
  r_studio = super.rstudioWrapper.override {
    packages = with self.rPackages; [
      ggplot2
      dplyr
      tidyr
      RCurl
      ARTool
      MASS
      RVAideMemoire
      XNomial
      car
      coin
      emmeans
      ez
      PMCMRplus
      fitdistrplus
      lme4
      lmerTest
      multcomp
      nnet
      phia
      purrr
      plyr
      reshape2
      skimr
    ];
  };
}
