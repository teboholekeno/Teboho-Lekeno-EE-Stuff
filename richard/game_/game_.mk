##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=game_
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/game_
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=23/09/2018
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
ObjectsFileList        :="game_.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)C:\doctest-1.2.9\doctest $(IncludeSwitch)C:\SFML-2.5.0\include 
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
Objects0=$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) \
	



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
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_main.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/main.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix) -MM /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp

$(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(PreprocessSuffix): /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_up_up_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(PreprocessSuffix) /2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


