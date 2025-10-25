#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <string>
#include <vector>

void installFish() {
  std::system("sudo pacman -S fish");
  std::system("sudo chsh -s ${fish_user_paths}/fish");
  std::system("rm -rf ~/.config/nvim");
  std::system("git clone --depth 1 --branch main --single-branch "
              "https://github.com/AirEnjoyer/AstroConfig ~/.config/nvim");
}

void getSubDirectories(std::vector<std::string> &subdirectories) {
  std::string path = std::getenv("HOME");
  path += "/dots/install/linuxUtils/";
  if (!std::filesystem::exists(path) || !std::filesystem::is_directory(path)) {
    std::cout << "Cannot access \"" << path << "\": No such file or directory"
              << std::endl;
  } else {
    for (const auto &entry : std::filesystem::directory_iterator(path)) {
      if (std::filesystem::is_directory(entry.status())) {
        subdirectories.push_back(entry.path().string());
      }
    }
  }
}

void installUtils(const std::vector<std::string> &subdirectories) {
  std::string buildPath = std::getenv("HOME");
  buildPath += "/dots/install/installer/build/utilsBuild";
  std::string mkdir = "mkdir ";
  mkdir += buildPath;

  std::string rmBuildPath = "rm -rf ";
  rmBuildPath += buildPath;

  std::system(rmBuildPath.c_str());
  std::system(mkdir.c_str());

  for (const std::string &dir : subdirectories) {
    std::string cmakeCommand = "cmake ";
    cmakeCommand += dir;
    cmakeCommand += " -B utilsBuild/";
    std::system(cmakeCommand.c_str());
    std::system("ninja -C utilsBuild/");
    std::system("sudo cmake --install utilsBuild/");
    std::system("rm -rf ./utilsBuild/*");
  }
}

void installDependencies(std::vector<std::string> &dependencies) {
  for (size_t i = 0; i < dependencies.size(); ++i) {
    dependencies[i].insert(0, "yay -S --noconfirm");
  }
  for (std::string dependency : dependencies) {
    std::system(dependency.c_str());
  }
}

int main() {
  std::vector<std::string> subdirectories;

  getSubDirectories(subdirectories);
  for (std::string dir : subdirectories) {
    std::cout << dir << std::endl;
  }
  // clang-format off
  std::vector<std::string> dependencies{
    "fish",
    "btop",
    "ghostty",
    "superfile",
    "elephant",
    "walker-bin",
    "starship",
    "blueberry",
    "enscript",
    "ghostscript",
    "dosftools",
    "ninja-git",
    "cmake",
    "clang++",
    "sdl3",
    "neovim",
    "luarocks",
    "fontconfig-git",
    "ttf-cascadia-code-git",
    "chromium",
    "mako",
    "swayosd",
    "sway",
    "swaybg",
    "playerctl",
    "xorg-modmap",
    "xorg-xev",
    "xorg-setxkbmap",
    "xorg-xset",
  };
  // clang-format on 

  std::system("sudo cp ~/dots/install/installer/spf.desktop /usr/share/applications/");
  std::system("sudo cp ~/dots/install/installer/defaults.list /usr/share/applications/");
  std::system("sudo cp ~/dots/install/installer/archen-menu.sh /usr/local/bin/archen-menu-master");
  std::system("sudo cp ~/dots/install/installer/archen-packages.sh /usr/local/bin/archen-menu-packages");
  std::system("sudo cp ~/dots/install/installer/archen-system.sh /usr/local/bin/archen-menu-system");
  std::system("sudo chmod /usr/local/bin/*");

  std::system("cp -rf ~/dots/.config/* ~/.config");
  std::system("cp ~/dots/glad ~/");

  installUtils(subdirectories);
  installFish();

  std::system("sudo pacman -S --needed sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg");
  std::system("sudo cp ~/dots/sddm.conf /etc/sddm.conf");
  std::system("sudo cp -rf ~/dots/silent/ /usr/share/sddm/themes/");
  std::system("sudo cp -r /usr/share/sddm/themes/silent/fonts/* /usr/share/fonts/");

  return 0;
}
