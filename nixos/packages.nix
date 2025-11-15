{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core utilities
    git
    vim
    nano
    wget
    curl
    rsync
    file
    tree
    docker

    # System monitoring
    htop
    tmux
    lm_sensors
    dmidecode
    smartmontools

    # Network utilities
    bind
    netcat
    traceroute
    mtr
    iperf3

    # Archive tools
    zip
    unzip
    p7zip
    gnutar

    # Security tools
    openssh
    gnupg
  ];
}
