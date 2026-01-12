{ ... } :

{
  imports = [
    ./drivers
  ];
  # Enable GPU Drivers
  drivers.amdgpu.enable = false;
  drivers.nvidia.enable = true;
  drivers.nvidia-prime = {
    enable = true;
    intelBusID = "PCI:0:2:0";
    nvidiaBusID = "PCI:0:1:0";
  };
  drivers.intel.enable = false;
  vm.guest-services.enable = false;
}
