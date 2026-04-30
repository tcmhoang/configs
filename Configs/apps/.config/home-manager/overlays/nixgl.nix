inputs: self: super: {
  hardcodedNixGL = let
    version = builtins.getEnv "NVIDIA_VERSION";
  in
    assert (version != null) || throw "Failed to fetch NVIDIA version from env";
      super.callPackage "${inputs.nixgl}/nixGL.nix" {
        nvidiaVersion = version;
      };
}
