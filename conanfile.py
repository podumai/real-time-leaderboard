from conan import ConanFile
from conan.tools.cmake import cmake_layout

class RealTimeLeaderBoardDeps(ConanFile):
    settings = ("os", "compiler", "build_type", "arch")
    generators = ("CMakeDeps", "CMakeToolchain")

    def requirements(self):
        self.requires("yaml-cpp/0.9.0")
        self.requires("rapidjson/1.1.0")
        self.requires("tomlplusplus/3.4.0")
        self.requires("catch2/3.13.0")

    def layout(self):
        cmake_layout(self)