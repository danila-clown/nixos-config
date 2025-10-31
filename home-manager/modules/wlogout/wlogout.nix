{ pkgs, ... }:

{
  programs.wlogout = {
    enable = true;
    layout = [
        {
            label = "lock";
            action = "hyprlock";
            text = "";
            keybind = "l";
        }
        {
            label = "logout";
            action = "hyprctl dispatch exit";
            text = "";
            keybind = "e";
        }
        {
            label = "reboot";
            action = "systemctl reboot";
            text = "";
            keybind = "r";
        }
        {
            label = "shutdown";
            action = "systemctl poweroff";
            text = "";
            keybind = "s";
        }
    ];

    style = ''
        * {
            box-shadow: none;
        }

        window {
            font-size: 8pt;
            background-color: rgba(32, 31, 31, 0.3);
        }

        button {
            border-radius: 25px;
            border-color: #18191a;
            text-decoration-color: #FFFFFF;
            color: #FFFFFF;
            background-color: #11111b;
            border-style: solid;
            border-width: 0px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: 25%;
            margin: 5px;
        }

        button:focus, button:active, button:hover {
            background-color: rgba(5, 5, 5, 0.3);
            outline-style: none;
            background-size: 35%;
            transition: all 0.2s cubic-bezier(.55,0.0,.28,1.682);
        }

        #lock      { background-image: url("./assets/lock.png"); }
        #logout    { background-image: url("./assets/logout.png"); }
        #reboot    { background-image: url("./assets/reboot.png"); }
        #shutdown  { background-image: url("./assets/shutdown.png"); }
    '';
  };

  home.file.".config/wlogout/assets/lock.png".source = ./assets/lock.png;
  home.file.".config/wlogout/assets/logout.png".source = ./assets/logout.png;
  home.file.".config/wlogout/assets/reboot.png".source = ./assets/reboot.png;
  home.file.".config/wlogout/assets/shutdown.png".source = ./assets/shutdown.png;
}