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
      glmmTMB
      multpois

      afex
      car
      ez
      emmeans
      chisq.posthoc.test
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
      performance
      effectsize
      MuMIn
      EnvStats
      rcompanion
      nortest
      skimr
    ];
  };
}
