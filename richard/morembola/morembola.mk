##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=morembola
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard
ProjectPath            :=C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=15/04/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="morembola.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)C:\doctest-1.2.9\doctest $(IncludeSwitch)C:\SFML-2.5.0\include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-audio" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:\SFML-2.5.0\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/mingw64/bin/ar.exe rcu
CXX      := C:/mingw64/bin/g++.exe --std=c++17
CC       := C:/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/mingw64/bin/as.exe


##
## User defined environment variables
##
Objects0=$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/Collision.cpp$(ObjectSuffix) $(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix) $(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix) $(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Player.cpp$(ObjectSuffix): Player.cpp $(IntermediateDirectory)/Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Player.cpp$(DependSuffix): Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Player.cpp$(DependSuffix) -MM Player.cpp

$(IntermediateDirectory)/Player.cpp$(PreprocessSuffix): Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Player.cpp$(PreprocessSuffix) Player.cpp

$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix): Window_Size.cpp $(IntermediateDirectory)/Window_Size.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix): Window_Size.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Window_Size.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Window_Size.cpp$(DependSuffix) -MM Window_Size.cpp

$(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix): Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Window_Size.cpp$(PreprocessSuffix) Window_Size.cpp

$(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix): Graphics.cpp $(IntermediateDirectory)/Graphics.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Graphics.cpp$(DependSuffix): Graphics.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Graphics.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Graphics.cpp$(DependSuffix) -MM Graphics.cpp

$(IntermediateDirectory)/Graphics.cpp$(PreprocessSuffix): Graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Graphics.cpp$(PreprocessSuffix) Graphics.cpp

$(IntermediateDirectory)/Game.cpp$(ObjectSuffix): Game.cpp $(IntermediateDirectory)/Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Game.cpp$(DependSuffix): Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Game.cpp$(DependSuffix) -MM Game.cpp

$(IntermediateDirectory)/Game.cpp$(PreprocessSuffix): Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Game.cpp$(PreprocessSuffix) Game.cpp

$(IntermediateDirectory)/Collision.cpp$(ObjectSuffix): Collision.cpp $(IntermediateDirectory)/Collision.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Collision.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Collision.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Collision.cpp$(DependSuffix): Collision.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Collision.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Collision.cpp$(DependSuffix) -MM Collision.cpp

$(IntermediateDirectory)/Collision.cpp$(PreprocessSuffix): Collision.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Collision.cpp$(PreprocessSuffix) Collision.cpp

$(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix): Mushroom.cpp $(IntermediateDirectory)/Mushroom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Mushroom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Mushroom.cpp$(DependSuffix): Mushroom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Mushroom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Mushroom.cpp$(DependSuffix) -MM Mushroom.cpp

$(IntermediateDirectory)/Mushroom.cpp$(PreprocessSuffix): Mushroom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Mushroom.cpp$(PreprocessSuffix) Mushroom.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix): Bullet.cpp $(IntermediateDirectory)/Bullet.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Bullet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Bullet.cpp$(DependSuffix): Bullet.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Bullet.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Bullet.cpp$(DependSuffix) -MM Bullet.cpp

$(IntermediateDirectory)/Bullet.cpp$(PreprocessSuffix): Bullet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Bullet.cpp$(PreprocessSuffix) Bullet.cpp

$(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix): Movable_Objects.cpp $(IntermediateDirectory)/Movable_Objects.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Movable_Objects.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Movable_Objects.cpp$(DependSuffix): Movable_Objects.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Movable_Objects.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Movable_Objects.cpp$(DependSuffix) -MM Movable_Objects.cpp

$(IntermediateDirectory)/Movable_Objects.cpp$(PreprocessSuffix): Movable_Objects.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Movable_Objects.cpp$(PreprocessSuffix) Movable_Objects.cpp

$(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix): Centipede.cpp $(IntermediateDirectory)/Centipede.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Desktop/Teboho-Lekeno-EE-Stuff/richard/morembola/Centipede.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Centipede.cpp$(DependSuffix): Centipede.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Centipede.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Centipede.cpp$(DependSuffix) -MM Centipede.cpp

$(IntermediateDirectory)/Centipede.cpp$(PreprocessSuffix): Centipede.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Centipede.cpp$(PreprocessSuffix) Centipede.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


